package com.miui.maml.elements;

import android.graphics.Bitmap;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import com.miui.maml.ScreenContext;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.data.ContextVariables;
import com.miui.maml.data.Expression;
import com.miui.maml.data.IndexedVariable;
import com.miui.maml.util.Utils;
import com.miui.maml.util.Utils.XmlTraverseListener;
import java.util.ArrayList;
import java.util.Iterator;
import org.w3c.dom.Element;

public class ListScreenElement
  extends ElementGroup
{
  private static double ACC = -800.0D;
  private static String DATA_TYPE_BITMAP = "bitmap";
  private static String DATA_TYPE_DOUBLE = "double";
  private static String DATA_TYPE_FLOAT = "float";
  private static String DATA_TYPE_INTEGER = "int";
  private static String DATA_TYPE_INTEGER1 = "integer";
  private static String DATA_TYPE_LONG = "long";
  private static String DATA_TYPE_STRING = "string";
  private static final String LOG_TAG = "ListScreenElement";
  public static final String TAG_NAME = "List";
  protected AttrDataBinders mAttrDataBinders;
  private int mBottomIndex;
  private int mCachedItemCount;
  private boolean mClearOnFinish;
  private ArrayList<ColumnInfo> mColumnsInfo;
  private int mCurrentIndex = -1;
  private long mCurrentTime;
  private ArrayList<DataIndexMap> mDataList = new ArrayList();
  private ArrayList<Integer> mIndexOrder = new ArrayList();
  private IndexedVariable[] mIndexedVariables;
  private ElementGroup mInnerGroup;
  private boolean mIsChildScroll;
  private boolean mIsScroll;
  private boolean mIsUpDirection;
  private ListItemElement mItem;
  private int mItemCount;
  private long mLastTime;
  protected ListData mListData;
  private final Object mLock = new Object();
  private Expression mMaxHeight;
  private boolean mMoving;
  private double mOffsetX;
  private double mOffsetY;
  private boolean mPressed;
  private ArrayList<Integer> mReuseIndex = new ArrayList();
  private AnimatedScreenElement mScrollBar;
  private int mSelectedId;
  private IndexedVariable mSelectedIdVar;
  private double mSpeed;
  private long mStartAnimTime;
  private float mStartAnimY;
  private int mTopIndex;
  private double mTouchStartX;
  private double mTouchStartY;
  private int mVisibleItemCount;
  
  public ListScreenElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    if (this.mItem != null)
    {
      setClip(true);
      this.mMaxHeight = Expression.build(getVariables(), paramElement.getAttribute("maxHeight"));
      this.mClearOnFinish = Boolean.parseBoolean(paramElement.getAttribute("clearOnFinish"));
      paramScreenElementRoot = paramElement.getAttribute("data");
      if (!TextUtils.isEmpty(paramScreenElementRoot))
      {
        paramScreenElementRoot = ColumnInfo.createColumnsInfo(paramScreenElementRoot);
        this.mColumnsInfo = paramScreenElementRoot;
        if (paramScreenElementRoot != null)
        {
          this.mIndexedVariables = new IndexedVariable[paramScreenElementRoot.size()];
          paramScreenElementRoot = Utils.getChild(paramElement, "AttrDataBinders");
          if (paramScreenElementRoot != null)
          {
            this.mAttrDataBinders = new AttrDataBinders(paramScreenElementRoot, this.mRoot.getContext().mContextVariables);
            paramElement = Utils.getChild(paramElement, "Data");
            if (paramElement != null) {
              this.mListData = new ListData(paramElement, this.mRoot, this);
            }
            paramScreenElementRoot = findElement("scrollbar");
            if ((paramScreenElementRoot instanceof AnimatedScreenElement))
            {
              paramElement = (AnimatedScreenElement)paramScreenElementRoot;
              this.mScrollBar = paramElement;
              paramElement.mAlignV = ScreenElement.AlignV.TOP;
              removeElement(paramScreenElementRoot);
              addElement(this.mScrollBar);
            }
            paramElement = new StringBuilder();
            paramElement.append(this.mName);
            paramElement.append(".selectedId");
            this.mSelectedIdVar = new IndexedVariable(paramElement.toString(), this.mRoot.getContext().mVariables, true);
            return;
          }
          Log.e("ListScreenElement", "no attr data binder");
          throw new IllegalArgumentException("List: no attr data binder");
        }
        Log.e("ListScreenElement", "invalid item data");
        throw new IllegalArgumentException("List: invalid item data");
      }
      Log.e("ListScreenElement", "no data");
      throw new IllegalArgumentException("List: no data");
    }
    Log.e("ListScreenElement", "no item");
    throw new IllegalArgumentException("List: no item");
  }
  
  private void addColumn(String paramString, Object[] paramArrayOfObject)
  {
    if ((paramString != null) && (paramArrayOfObject != null))
    {
      int i = -1;
      int j = this.mColumnsInfo.size();
      int k = 0;
      int n;
      for (int m = 0;; m++)
      {
        n = i;
        if (m >= j) {
          break;
        }
        if (paramString.equals(((ColumnInfo)this.mColumnsInfo.get(m)).mVarName))
        {
          n = m;
          break;
        }
      }
      if (n < 0) {
        return;
      }
      synchronized (this.mLock)
      {
        j = paramArrayOfObject.length;
        i = this.mDataList.size();
        for (m = k;; m++)
        {
          k = i;
          if (m >= i) {
            break;
          }
          paramString = null;
          if (m < j) {
            paramString = paramArrayOfObject[m];
          }
          ((DataIndexMap)this.mDataList.get(m)).setData(n, paramString);
          if (((DataIndexMap)this.mDataList.get(m)).mElementIndex >= 0) {
            getItem(m);
          }
        }
        while (k < j)
        {
          paramString = new Object[this.mColumnsInfo.size()];
          paramString[n] = paramArrayOfObject[k];
          addItem(paramString);
          k++;
        }
        clearEmptyRowLocked();
        requestUpdate();
        return;
      }
    }
  }
  
  private void bindDataLocked(ListItemElement paramListItemElement, int paramInt1, int paramInt2)
  {
    if ((paramInt2 >= 0) && (paramInt2 < this.mItemCount))
    {
      Object localObject1 = ((DataIndexMap)this.mDataList.get(paramInt2)).mData;
      paramListItemElement.setDataIndex(paramInt2);
      ((DataIndexMap)this.mDataList.get(paramInt2)).mElementIndex = paramInt1;
      Object localObject2 = (DataIndexMap)this.mDataList.get(paramInt2);
      paramInt1 = 0;
      ((DataIndexMap)localObject2).mNeedRebind = false;
      paramListItemElement.setY((float)(paramInt2 * this.mItem.getHeight()));
      paramInt2 = this.mColumnsInfo.size();
      localObject2 = getContext().mContextVariables;
      while (paramInt1 < paramInt2)
      {
        ((ContextVariables)localObject2).setVar(((ColumnInfo)this.mColumnsInfo.get(paramInt1)).mVarName, localObject1[paramInt1]);
        paramInt1++;
      }
      localObject1 = this.mAttrDataBinders;
      if (localObject1 != null) {
        ((AttrDataBinders)localObject1).bind(paramListItemElement);
      }
      return;
    }
    Log.e("ListScreenElement", "invalid item data");
  }
  
  private void checkVisibility()
  {
    synchronized (this.mLock)
    {
      ArrayList localArrayList = this.mInnerGroup.getElements();
      for (int i = 0; i < localArrayList.size(); i++)
      {
        ListItemElement localListItemElement = (ListItemElement)localArrayList.get(i);
        int j = localListItemElement.getDataIndex();
        if ((j >= 0) && (j >= this.mTopIndex) && (j <= this.mBottomIndex))
        {
          if (!localListItemElement.isVisible()) {
            localListItemElement.show(true);
          }
        }
        else if (localListItemElement.isVisible()) {
          localListItemElement.show(false);
        }
      }
      return;
    }
  }
  
  private void clearEmptyRowLocked()
  {
    for (int i = this.mDataList.size() - 1; i >= 0; i--)
    {
      Object[] arrayOfObject = ((DataIndexMap)this.mDataList.get(i)).mData;
      int j = arrayOfObject.length;
      int k = 0;
      for (int m = 0; m < j; m++) {
        if (arrayOfObject[m] != null)
        {
          m = k;
          break label67;
        }
      }
      m = 1;
      label67:
      if (m == 0) {
        break;
      }
      removeItemLocked(i);
    }
  }
  
  private ListItemElement getItem(int paramInt)
  {
    Object localObject1 = this.mLock;
    Object localObject2 = null;
    if (paramInt >= 0) {}
    try
    {
      if (paramInt < this.mItemCount)
      {
        int i = ((DataIndexMap)this.mDataList.get(paramInt)).mElementIndex;
        Object localObject3 = localObject2;
        if (i >= 0)
        {
          localObject3 = localObject2;
          if (i < this.mInnerGroup.getElements().size()) {
            localObject3 = (ListItemElement)this.mInnerGroup.getElements().get(i);
          }
        }
        int j;
        if (i >= 0)
        {
          localObject2 = localObject3;
          j = i;
          if (localObject3 != null)
          {
            localObject2 = localObject3;
            j = i;
            if (((ListItemElement)localObject3).getDataIndex() == paramInt) {}
          }
        }
        else
        {
          i = getUseableElementIndex();
          localObject3 = (ListItemElement)this.mInnerGroup.getElements().get(i);
          localObject2 = localObject3;
          j = i;
          if (localObject3 != null)
          {
            localObject2 = localObject3;
            j = i;
            if (((ListItemElement)localObject3).getDataIndex() < 0)
            {
              ((ScreenElement)localObject3).reset();
              j = i;
              localObject2 = localObject3;
            }
          }
        }
        if ((localObject2 != null) && ((localObject2.getDataIndex() != paramInt) || (((DataIndexMap)this.mDataList.get(paramInt)).mNeedRebind))) {
          bindDataLocked(localObject2, j, paramInt);
        }
        return localObject2;
      }
      return null;
    }
    finally {}
  }
  
  private int getUseableElementIndex()
  {
    int i;
    if (this.mReuseIndex.size() > 0)
    {
      i = ((Integer)this.mReuseIndex.remove(0)).intValue();
    }
    else if (this.mIsUpDirection)
    {
      i = ((Integer)this.mIndexOrder.remove(0)).intValue();
    }
    else
    {
      ArrayList localArrayList = this.mIndexOrder;
      i = ((Integer)localArrayList.remove(localArrayList.size() - 1)).intValue();
    }
    if (this.mIsUpDirection) {
      this.mIndexOrder.add(Integer.valueOf(i));
    } else {
      this.mIndexOrder.add(0, Integer.valueOf(i));
    }
    return i;
  }
  
  private void moveTo(double paramDouble)
  {
    double d = paramDouble;
    if (paramDouble < getHeight() - this.mItemCount * this.mItem.getHeight())
    {
      d = getHeight() - this.mItemCount * this.mItem.getHeight();
      this.mStartAnimTime = 0L;
    }
    paramDouble = d;
    if (d > 0.0D)
    {
      this.mStartAnimTime = 0L;
      paramDouble = 0.0D;
    }
    this.mInnerGroup.setY((float)paramDouble);
    this.mTopIndex = Math.min((int)Math.floor(-paramDouble / this.mItem.getHeight()), this.mItemCount - (int)(getHeight() / this.mItem.getHeight()) - 1);
    this.mBottomIndex = Math.min((int)(getHeight() / this.mItem.getHeight()) + this.mTopIndex, this.mItemCount - 1);
    for (int i = this.mTopIndex; i <= this.mBottomIndex; i++) {
      getItem(i);
    }
    checkVisibility();
    updateScorllBar();
  }
  
  private void removeItemLocked(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < this.mItemCount))
    {
      this.mDataList.remove(paramInt);
      this.mItemCount -= 1;
      setActualHeight(descale(getHeight()));
      int i = this.mIndexOrder.size();
      int j = 0;
      int n;
      for (int k = j; j < i; k = n)
      {
        ListItemElement localListItemElement = (ListItemElement)this.mInnerGroup.getElements().get(((Integer)this.mIndexOrder.get(j)).intValue());
        int m = localListItemElement.getDataIndex();
        if (m == paramInt)
        {
          localListItemElement.setDataIndex(-1);
          localListItemElement.setY(-1.797693134862316E+308D);
          localListItemElement.show(false);
          n = j;
        }
        else
        {
          n = k;
          if (m > paramInt)
          {
            n = m - 1;
            localListItemElement.setDataIndex(n);
            localListItemElement.setY(n * this.mItem.getHeight());
            n = k;
          }
        }
        j++;
      }
      if (i > 0)
      {
        paramInt = ((Integer)this.mIndexOrder.remove(k)).intValue();
        moveTo(this.mInnerGroup.getY());
        this.mReuseIndex.add(Integer.valueOf(paramInt));
      }
      requestUpdate();
    }
  }
  
  private void resetInner()
  {
    AnimatedScreenElement localAnimatedScreenElement = this.mScrollBar;
    if (localAnimatedScreenElement != null) {
      localAnimatedScreenElement.show(false);
    }
    this.mMoving = false;
    this.mIsScroll = false;
    this.mIsChildScroll = false;
    this.mStartAnimTime = -1L;
    this.mSpeed = 0.0D;
  }
  
  private void setVariables()
  {
    int i = this.mColumnsInfo.size();
    for (int j = 0; j < i; j++)
    {
      Object localObject1 = (ColumnInfo)this.mColumnsInfo.get(j);
      if (((ColumnInfo)localObject1).mType != ListScreenElement.ColumnInfo.Type.BITMAP)
      {
        Object localObject3 = this.mIndexedVariables;
        if (localObject3[j] == null)
        {
          ??? = new StringBuilder();
          ((StringBuilder)???).append(this.mName);
          ((StringBuilder)???).append(".");
          ((StringBuilder)???).append(((ColumnInfo)localObject1).mVarName);
          localObject3[j] = new IndexedVariable(((StringBuilder)???).toString(), this.mRoot.getContext().mVariables, ((ColumnInfo)localObject1).mType.isNumber());
        }
        synchronized (this.mLock)
        {
          localObject3 = this.mIndexedVariables[j];
          int k = this.mSelectedId;
          if ((k >= 0) && (k < this.mDataList.size())) {
            localObject1 = ((DataIndexMap)this.mDataList.get(this.mSelectedId)).mData[j];
          } else {
            localObject1 = null;
          }
          ((IndexedVariable)localObject3).set(localObject1);
        }
      }
    }
  }
  
  private void startAnimation()
  {
    this.mStartAnimTime = SystemClock.elapsedRealtime();
    this.mStartAnimY = this.mInnerGroup.getY();
  }
  
  private void updateScorllBar()
  {
    if ((this.mScrollBar != null) && (this.mIsScroll))
    {
      double d1 = this.mItemCount * this.mItem.getHeight();
      double d2 = getHeight();
      double d3 = d2 / d1;
      boolean bool = true;
      double d4 = d3;
      if (d3 >= 1.0D)
      {
        d4 = 0.0D;
        bool = false;
      }
      d1 = this.mInnerGroup.getY() / (d2 - d1);
      d3 = d1;
      if (d1 > 1.0D) {
        d3 = 1.0D;
      }
      this.mScrollBar.setY((float)((1.0D - d4) * d2 * d3));
      this.mScrollBar.setHeight((float)(d2 * d4));
      if (this.mScrollBar.isVisible() != bool) {
        this.mScrollBar.show(bool);
      }
    }
  }
  
  public void addItem(Object... paramVarArgs)
  {
    if (paramVarArgs == null) {
      return;
    }
    if (paramVarArgs.length != this.mColumnsInfo.size())
    {
      Log.e("ListScreenElement", "invalid item data count");
      return;
    }
    int i = paramVarArgs.length;
    for (int j = 0; j < i; j++) {
      if (!((ColumnInfo)this.mColumnsInfo.get(j)).validate(paramVarArgs[j]))
      {
        ??? = new StringBuilder();
        ((StringBuilder)???).append("invalid item data type: ");
        ((StringBuilder)???).append(paramVarArgs[j]);
        Log.e("ListScreenElement", ((StringBuilder)???).toString());
        return;
      }
    }
    synchronized (this.mLock)
    {
      Object localObject2 = this.mDataList;
      DataIndexMap localDataIndexMap = new com/miui/maml/elements/ListScreenElement$DataIndexMap;
      localDataIndexMap.<init>((Object[])paramVarArgs.clone());
      ((ArrayList)localObject2).add(localDataIndexMap);
      this.mCurrentIndex += 1;
      this.mItemCount += 1;
      setActualHeight(descale(getHeight()));
      j = (int)(Math.max(super.getHeight(), scale(evaluate(this.mMaxHeight))) / this.mItem.getHeight());
      this.mVisibleItemCount = j;
      this.mCachedItemCount = (j * 2);
      j = this.mInnerGroup.getElements().size();
      if (j < this.mCachedItemCount)
      {
        paramVarArgs = new com/miui/maml/elements/ListScreenElement$ListItemElement;
        localObject2 = this.mItem;
        paramVarArgs.<init>(((ListItemElement)localObject2).mNode, ((ScreenElement)localObject2).mRoot);
        this.mInnerGroup.addElement(paramVarArgs);
        ((DataIndexMap)this.mDataList.get(this.mCurrentIndex)).mElementIndex = j;
        this.mSelectedId = this.mCurrentIndex;
        paramVarArgs.init();
        this.mSelectedId = -1;
        bindDataLocked(paramVarArgs, j, this.mCurrentIndex);
        this.mIndexOrder.add(Integer.valueOf(this.mCurrentIndex));
      }
      requestUpdate();
      return;
    }
  }
  
  protected void doTick(long paramLong)
  {
    super.doTick(paramLong);
    long l = this.mStartAnimTime;
    if ((l >= 0L) && (!this.mPressed))
    {
      if (l != 0L)
      {
        double d1 = this.mSpeed;
        double d2 = ACC;
        double d3 = paramLong - l;
        if (d2 * d3 / 1000.0D + d1 >= 0.0D)
        {
          d1 = d1 * d3 / 1000.0D + d2 * 0.5D * d3 * d3 / 1000000.0D;
          this.mOffsetY = d1;
          d2 = this.mStartAnimY;
          d3 = d1;
          if (this.mIsUpDirection) {
            d3 = -d1;
          }
          moveTo(d2 + d3);
          break label139;
        }
      }
      resetInner();
      label139:
      requestUpdate();
    }
  }
  
  public ScreenElement findElement(String paramString)
  {
    synchronized (this.mLock)
    {
      int i = this.mSelectedId;
      if ((i >= 0) && (i < this.mItemCount))
      {
        i = ((DataIndexMap)this.mDataList.get(i)).mElementIndex;
        if (i >= 0)
        {
          ScreenElement localScreenElement = ((ListItemElement)this.mInnerGroup.getElements().get(i)).findElement(paramString);
          if (localScreenElement != null) {
            return localScreenElement;
          }
        }
      }
      return super.findElement(paramString);
    }
  }
  
  public void finish()
  {
    super.finish();
    if (this.mClearOnFinish) {
      removeAllItems();
    }
    ListData localListData = this.mListData;
    if (localListData != null) {
      localListData.finish();
    }
  }
  
  public ArrayList<ColumnInfo> getColumnsInfo()
  {
    return this.mColumnsInfo;
  }
  
  public float getHeight()
  {
    float f;
    if (this.mMaxHeight == null) {
      f = super.getHeight();
    } else {
      f = Math.min(this.mItemCount * this.mItem.getHeight(), scale(evaluate(this.mMaxHeight)));
    }
    return f;
  }
  
  public void init()
  {
    super.init();
    resetInner();
    this.mInnerGroup.setY(0.0D);
    setActualHeight(descale(getHeight()));
    this.mSelectedId = -1;
    this.mSelectedIdVar.set(-1);
    setVariables();
    ListData localListData = this.mListData;
    if (localListData != null) {
      localListData.init();
    }
  }
  
  protected ScreenElement onCreateChild(Element paramElement)
  {
    if ((paramElement.getTagName().equalsIgnoreCase("Item")) && (this.mInnerGroup == null))
    {
      this.mItem = new ListItemElement(paramElement, this.mRoot);
      paramElement = new ElementGroup(null, this.mRoot);
      this.mInnerGroup = paramElement;
      return paramElement;
    }
    return super.onCreateChild(paramElement);
  }
  
  public boolean onTouch(MotionEvent paramMotionEvent)
  {
    if (!isVisible()) {
      return false;
    }
    float f1 = paramMotionEvent.getX();
    float f2 = paramMotionEvent.getY();
    int i = paramMotionEvent.getActionMasked();
    boolean bool;
    if (i != 0)
    {
      if (i != 1)
      {
        if (i != 2)
        {
          if (i != 3) {
            break label524;
          }
          do
          {
            this.mPressed = false;
          } while (!this.mMoving);
          performAction("cancel");
          resetInner();
          this.mStartAnimTime = -1L;
          i = 1;
          break label527;
        }
        if (this.mMoving)
        {
          this.mCurrentTime = SystemClock.elapsedRealtime();
          double d1 = f2;
          double d2 = d1 - this.mTouchStartY;
          this.mOffsetY = d2;
          this.mOffsetX = (f1 - this.mTouchStartX);
          if ((!this.mIsScroll) && (!this.mIsChildScroll))
          {
            double d3 = Math.abs(d2);
            d2 = Math.abs(this.mOffsetX);
            if ((d3 > 5.0D) && (!this.mIsChildScroll) && (d3 >= d2)) {
              this.mIsScroll = true;
            } else if ((d2 > 5.0D) && (!this.mIsScroll) && (d3 < d2)) {
              this.mIsChildScroll = true;
            }
          }
          if ((this.mOffsetY >= 0.0D) && (!this.mIsChildScroll)) {
            bool = false;
          } else {
            bool = true;
          }
          this.mIsUpDirection = bool;
          if (this.mIsScroll)
          {
            paramMotionEvent.setAction(3);
            performAction("move");
            onActionMove(f1, f2);
            this.mSpeed = (Math.abs(this.mOffsetY) / (this.mCurrentTime - this.mLastTime) * 1000.0D);
            moveTo(this.mInnerGroup.getY() + this.mOffsetY);
            this.mTouchStartY = d1;
            this.mLastTime = this.mCurrentTime;
          }
          i = 1;
          break label527;
        }
        break label524;
      }
      this.mPressed = false;
      if (!this.mMoving) {
        break label524;
      }
      Log.i("ListScreenElement", "unlock touch up");
      performAction("up");
      onActionUp();
      if (this.mSpeed < 400.0D) {
        resetInner();
      } else {
        startAnimation();
      }
    }
    else
    {
      if (!touched(f1, f2)) {
        break label524;
      }
      this.mMoving = true;
      this.mPressed = true;
      performAction("down");
      onActionDown(f1, f2);
      this.mStartAnimTime = -1L;
      this.mSpeed = 0.0D;
      this.mLastTime = SystemClock.elapsedRealtime();
      i = (int)Math.floor((f2 - this.mInnerGroup.getAbsoluteTop()) / this.mItem.getHeight());
      this.mSelectedId = i;
      this.mSelectedIdVar.set(i);
      setVariables();
      this.mTouchStartX = f1;
      this.mTouchStartY = f2;
      updateScorllBar();
    }
    i = 1;
    break label527;
    label524:
    i = 0;
    label527:
    if ((!super.onTouch(paramMotionEvent)) && ((i == 0) || (!this.mInterceptTouch))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public void removeAllItems()
  {
    synchronized (this.mLock)
    {
      this.mInnerGroup.removeAllElements();
      this.mInnerGroup.setY(0.0D);
      this.mDataList.clear();
      this.mIndexOrder.clear();
      this.mReuseIndex.clear();
      this.mCurrentIndex = -1;
      this.mItemCount = 0;
      setActualHeight(descale(getHeight()));
      return;
    }
  }
  
  public static class Column
  {
    public ListScreenElement mList;
    public String mName;
    public VariableArrayElement.VarObserver mObserver;
    public ScreenElementRoot mRoot;
    public String mTarget;
    public VariableArrayElement mTargetElement;
    
    public Column(Element paramElement, ScreenElementRoot paramScreenElementRoot, ListScreenElement paramListScreenElement)
    {
      this.mRoot = paramScreenElementRoot;
      this.mList = paramListScreenElement;
      if (paramElement != null) {
        load(paramElement);
      }
    }
    
    private void load(Element paramElement)
    {
      this.mName = paramElement.getAttribute("name");
      this.mTarget = paramElement.getAttribute("target");
      this.mObserver = new VariableArrayElement.VarObserver()
      {
        public void onDataChange(Object[] paramAnonymousArrayOfObject)
        {
          ListScreenElement.Column localColumn = ListScreenElement.Column.this;
          localColumn.mList.addColumn(localColumn.mName, paramAnonymousArrayOfObject);
        }
      };
    }
    
    public void finish()
    {
      VariableArrayElement localVariableArrayElement = this.mTargetElement;
      if (localVariableArrayElement != null) {
        localVariableArrayElement.registerVarObserver(this.mObserver, false);
      }
    }
    
    public void init()
    {
      if (this.mTargetElement == null)
      {
        Object localObject = this.mRoot.findElement(this.mTarget);
        if ((localObject instanceof VariableArrayElement))
        {
          this.mTargetElement = ((VariableArrayElement)localObject);
        }
        else
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("can't find VarArray:");
          ((StringBuilder)localObject).append(this.mTarget);
          Log.e("ListScreenElement", ((StringBuilder)localObject).toString());
          return;
        }
      }
      this.mTargetElement.registerVarObserver(this.mObserver, true);
    }
  }
  
  public static class ColumnInfo
  {
    public Type mType;
    public String mVarName;
    
    public ColumnInfo(String paramString)
    {
      int i = paramString.indexOf(":");
      if (i != -1)
      {
        this.mVarName = paramString.substring(0, i);
        paramString = paramString.substring(i + 1);
        if (ListScreenElement.DATA_TYPE_STRING.equals(paramString)) {
          this.mType = Type.STRING;
        } else if (ListScreenElement.DATA_TYPE_BITMAP.equals(paramString)) {
          this.mType = Type.BITMAP;
        } else if ((!ListScreenElement.DATA_TYPE_INTEGER.equals(paramString)) && (!ListScreenElement.DATA_TYPE_INTEGER1.equals(paramString)))
        {
          if (ListScreenElement.DATA_TYPE_DOUBLE.equals(paramString))
          {
            this.mType = Type.DOUBLE;
          }
          else if (ListScreenElement.DATA_TYPE_LONG.equals(paramString))
          {
            this.mType = Type.LONG;
          }
          else if (ListScreenElement.DATA_TYPE_FLOAT.equals(paramString))
          {
            this.mType = Type.FLOAT;
          }
          else
          {
            localStringBuilder = new StringBuilder();
            localStringBuilder.append("List: invalid item data type:");
            localStringBuilder.append(paramString);
            throw new IllegalArgumentException(localStringBuilder.toString());
          }
        }
        else {
          this.mType = Type.INTEGER;
        }
        return;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("List: invalid item data ");
      localStringBuilder.append(paramString);
      throw new IllegalArgumentException(localStringBuilder.toString());
    }
    
    public static ArrayList<ColumnInfo> createColumnsInfo(String paramString)
    {
      if (TextUtils.isEmpty(paramString)) {
        return null;
      }
      ArrayList localArrayList = new ArrayList();
      paramString = paramString.split(",");
      int i = paramString.length;
      for (int j = 0; j < i; j++) {
        localArrayList.add(new ColumnInfo(paramString[j]));
      }
      return localArrayList;
    }
    
    public boolean validate(Object paramObject)
    {
      if (paramObject == null) {
        return true;
      }
      switch (ListScreenElement.1.$SwitchMap$com$miui$maml$elements$ListScreenElement$ColumnInfo$Type[this.mType.ordinal()])
      {
      default: 
        return false;
      case 6: 
        return paramObject instanceof Float;
      case 5: 
        return paramObject instanceof Long;
      case 4: 
        return paramObject instanceof Double;
      case 3: 
        return paramObject instanceof Integer;
      case 2: 
        return paramObject instanceof Bitmap;
      }
      return paramObject instanceof String;
    }
    
    public static enum Type
    {
      static
      {
        Type localType1 = new Type("STRING", 0);
        STRING = localType1;
        Type localType2 = new Type("BITMAP", 1);
        BITMAP = localType2;
        Type localType3 = new Type("INTEGER", 2);
        INTEGER = localType3;
        Type localType4 = new Type("DOUBLE", 3);
        DOUBLE = localType4;
        Type localType5 = new Type("LONG", 4);
        LONG = localType5;
        Type localType6 = new Type("FLOAT", 5);
        FLOAT = localType6;
        $VALUES = new Type[] { localType1, localType2, localType3, localType4, localType5, localType6 };
      }
      
      private Type() {}
      
      public boolean isNumber()
      {
        boolean bool;
        if ((this != INTEGER) && (this != DOUBLE) && (this != LONG) && (this != FLOAT)) {
          bool = false;
        } else {
          bool = true;
        }
        return bool;
      }
    }
  }
  
  private static class DataIndexMap
  {
    public Object[] mData;
    public int mElementIndex;
    public boolean mNeedRebind;
    
    public DataIndexMap(Object[] paramArrayOfObject)
    {
      this(paramArrayOfObject, -1);
    }
    
    public DataIndexMap(Object[] paramArrayOfObject, int paramInt)
    {
      this.mData = paramArrayOfObject;
      this.mElementIndex = paramInt;
    }
    
    public void setData(int paramInt, Object paramObject)
    {
      Object[] arrayOfObject = this.mData;
      if ((arrayOfObject != null) && (arrayOfObject.length > paramInt))
      {
        arrayOfObject[paramInt] = paramObject;
        this.mNeedRebind = true;
      }
    }
  }
  
  public static class ListData
  {
    public ArrayList<ListScreenElement.Column> mColumns = new ArrayList();
    public ListScreenElement mList;
    public ScreenElementRoot mRoot;
    
    public ListData(Element paramElement, ScreenElementRoot paramScreenElementRoot, ListScreenElement paramListScreenElement)
    {
      this.mRoot = paramScreenElementRoot;
      this.mList = paramListScreenElement;
      if (paramElement != null) {
        load(paramElement);
      }
    }
    
    private void load(Element paramElement)
    {
      Utils.traverseXmlElementChildren(paramElement, "Column", new Utils.XmlTraverseListener()
      {
        public void onChild(Element paramAnonymousElement)
        {
          ListScreenElement.ListData localListData = ListScreenElement.ListData.this;
          localListData.mColumns.add(new ListScreenElement.Column(paramAnonymousElement, localListData.mRoot, localListData.mList));
        }
      });
    }
    
    public void finish()
    {
      Iterator localIterator = this.mColumns.iterator();
      while (localIterator.hasNext())
      {
        ListScreenElement.Column localColumn = (ListScreenElement.Column)localIterator.next();
        if (localColumn != null) {
          localColumn.finish();
        }
      }
    }
    
    public void init()
    {
      Iterator localIterator = this.mColumns.iterator();
      while (localIterator.hasNext())
      {
        ListScreenElement.Column localColumn = (ListScreenElement.Column)localIterator.next();
        if (localColumn != null) {
          localColumn.init();
        }
      }
    }
  }
  
  private static class ListItemElement
    extends ElementGroup
  {
    public static final String TAG_NAME = "Item";
    private int mDataIndex = -1;
    private AnimatedScreenElement mDivider;
    protected Element mNode;
    
    public ListItemElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
    {
      super(paramScreenElementRoot);
      this.mNode = paramElement;
      paramElement = findElement("divider");
      if ((paramElement instanceof AnimatedScreenElement))
      {
        this.mDivider = ((AnimatedScreenElement)paramElement);
        removeElement(paramElement);
        addElement(this.mDivider);
      }
      this.mAlignV = ScreenElement.AlignV.TOP;
    }
    
    public int getDataIndex()
    {
      return this.mDataIndex;
    }
    
    public void setDataIndex(int paramInt)
    {
      this.mDataIndex = paramInt;
      AnimatedScreenElement localAnimatedScreenElement = this.mDivider;
      if (localAnimatedScreenElement != null) {
        if (paramInt <= 0) {
          localAnimatedScreenElement.show(false);
        } else {
          localAnimatedScreenElement.show(true);
        }
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.ListScreenElement
 * JD-Core Version:    0.7.0.1
 */