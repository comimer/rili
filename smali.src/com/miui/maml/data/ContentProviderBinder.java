package com.miui.maml.data;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.database.sqlite.SQLiteDiskIOException;
import android.database.sqlite.SQLiteFullException;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.miui.maml.ScreenContext;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.elements.ImageScreenElement;
import com.miui.maml.elements.ListScreenElement;
import com.miui.maml.elements.ListScreenElement.ColumnInfo;
import com.miui.maml.util.SystemProperties;
import com.miui.maml.util.TextFormatter;
import com.miui.maml.util.Utils;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.w3c.dom.Element;

public class ContentProviderBinder
  extends VariableBinder
{
  private static final boolean DBG = false;
  private static final String LOG_TAG = "ContentProviderBinder";
  private static final int QUERY_TOKEN = 100;
  public static final String TAG_NAME = "ContentProviderBinder";
  private volatile boolean mAllowReg = true;
  protected String[] mArgs;
  private boolean mAwareChangeWhilePause;
  private ChangeObserver mChangeObserver = new ChangeObserver();
  protected String[] mColumns;
  protected String mCountName;
  private IndexedVariable mCountVar;
  private Handler mHandler;
  private long mLastQueryTime;
  private Uri mLastUri;
  private List mList;
  private final Object mLock = new Object();
  private boolean mNeedsRequery = true;
  protected String mOrder;
  private QueryHandler mQueryHandler;
  private boolean mSystemBootCompleted;
  private int mUpdateInterval = -1;
  private Runnable mUpdater;
  protected TextFormatter mUriFormatter;
  protected TextFormatter mWhereFormatter;
  
  public ContentProviderBinder(ScreenElementRoot paramScreenElementRoot)
  {
    this(null, paramScreenElementRoot);
  }
  
  public ContentProviderBinder(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    this.mHandler = paramScreenElementRoot.getContext().getHandler();
    this.mQueryHandler = new QueryHandler(getContext().mContext);
    if (paramElement != null) {
      load(paramElement);
    }
  }
  
  private void checkUpdate()
  {
    if (this.mUpdateInterval <= 0) {
      return;
    }
    this.mHandler.removeCallbacks(this.mUpdater);
    long l1 = System.currentTimeMillis() - this.mLastQueryTime;
    long l2 = l1;
    if (l1 >= this.mUpdateInterval * 1000)
    {
      startQuery();
      l2 = 0L;
    }
    this.mHandler.postDelayed(this.mUpdater, this.mUpdateInterval * 1000 - l2);
  }
  
  private void load(Element paramElement)
  {
    Variables localVariables = getVariables();
    Object localObject1 = Expression.build(localVariables, paramElement.getAttribute("uriExp"));
    Object localObject2 = Expression.build(localVariables, paramElement.getAttribute("uriFormatExp"));
    this.mUriFormatter = new TextFormatter(localVariables, paramElement.getAttribute("uri"), paramElement.getAttribute("uriFormat"), paramElement.getAttribute("uriParas"), (Expression)localObject1, (Expression)localObject2);
    localObject2 = paramElement.getAttribute("columns");
    boolean bool = TextUtils.isEmpty((CharSequence)localObject2);
    localObject1 = null;
    if (bool) {
      localObject2 = null;
    } else {
      localObject2 = ((String)localObject2).split(",");
    }
    this.mColumns = ((String[])localObject2);
    Object localObject3 = Expression.build(localVariables, paramElement.getAttribute("whereExp"));
    localObject2 = Expression.build(localVariables, paramElement.getAttribute("whereFormatExp"));
    this.mWhereFormatter = new TextFormatter(localVariables, paramElement.getAttribute("where"), paramElement.getAttribute("whereFormat"), paramElement.getAttribute("whereParas"), (Expression)localObject3, (Expression)localObject2);
    localObject2 = paramElement.getAttribute("args");
    if (TextUtils.isEmpty((CharSequence)localObject2)) {
      localObject2 = null;
    } else {
      localObject2 = ((String)localObject2).split(",");
    }
    this.mArgs = ((String[])localObject2);
    localObject3 = paramElement.getAttribute("order");
    localObject2 = localObject3;
    if (TextUtils.isEmpty((CharSequence)localObject3)) {
      localObject2 = null;
    }
    this.mOrder = ((String)localObject2);
    localObject2 = paramElement.getAttribute("countName");
    if (TextUtils.isEmpty((CharSequence)localObject2)) {
      localObject2 = localObject1;
    }
    this.mCountName = ((String)localObject2);
    if (localObject2 != null) {
      this.mCountVar = new IndexedVariable((String)localObject2, localVariables, true);
    }
    int i = Utils.getAttrAsInt(paramElement, "updateInterval", -1);
    this.mUpdateInterval = i;
    if (i > 0) {
      this.mUpdater = new Runnable()
      {
        public void run()
        {
          ContentProviderBinder.this.checkUpdate();
        }
      };
    }
    loadVariables(paramElement);
    localObject1 = Utils.getChild(paramElement, "List");
    if (localObject1 != null) {
      try
      {
        localObject2 = new com/miui/maml/data/ContentProviderBinder$List;
        ((List)localObject2).<init>((Element)localObject1, this.mRoot);
        this.mList = ((List)localObject2);
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        Log.e("ContentProviderBinder", "invalid List");
      }
    }
    this.mAwareChangeWhilePause = Boolean.parseBoolean(paramElement.getAttribute("vigilant"));
  }
  
  private void onQueryComplete()
  {
    onUpdateComplete();
  }
  
  private void registerObserver(Uri paramUri, boolean paramBoolean)
  {
    ContentResolver localContentResolver = getContext().mContext.getContentResolver();
    localContentResolver.unregisterContentObserver(this.mChangeObserver);
    if ((paramBoolean) && (this.mAllowReg)) {
      synchronized (this.mLock)
      {
        if (!this.mAllowReg) {
          return;
        }
        try
        {
          localContentResolver.registerContentObserver(paramUri, true, this.mChangeObserver);
        }
        catch (SecurityException localSecurityException)
        {
          localStringBuilder = new java/lang/StringBuilder;
          localStringBuilder.<init>();
          localStringBuilder.append(localSecurityException.toString());
          localStringBuilder.append("  uri:");
          localStringBuilder.append(paramUri);
          Log.e("ContentProviderBinder", localStringBuilder.toString());
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          StringBuilder localStringBuilder = new java/lang/StringBuilder;
          localStringBuilder.<init>();
          localStringBuilder.append(localIllegalArgumentException.toString());
          localStringBuilder.append("  uri:");
          localStringBuilder.append(paramUri);
          Log.e("ContentProviderBinder", localStringBuilder.toString());
        }
      }
    }
  }
  
  private void updateVariables(Cursor paramCursor)
  {
    int i;
    if (paramCursor == null) {
      i = 0;
    } else {
      i = paramCursor.getCount();
    }
    Object localObject1 = this.mCountVar;
    if (localObject1 != null) {
      ((IndexedVariable)localObject1).set(i);
    }
    localObject1 = this.mList;
    if (localObject1 != null) {
      ((List)localObject1).fill(paramCursor);
    }
    if ((paramCursor != null) && (i != 0))
    {
      Iterator localIterator = this.mVariables.iterator();
      while (localIterator.hasNext())
      {
        Object localObject2 = (VariableBinder.Variable)localIterator.next();
        Variable localVariable = (Variable)localObject2;
        if (!localVariable.mBlocked)
        {
          double d = 0.0D;
          if (paramCursor.moveToPosition(localVariable.mRow)) {
            try
            {
              int j = paramCursor.getColumnIndexOrThrow(localVariable.mColumn);
              if (!paramCursor.isNull(j))
              {
                i = ((VariableBinder.TypedValue)localObject2).mType;
                if (i != 2)
                {
                  if ((i != 1001) && (i != 7))
                  {
                    if (i != 8)
                    {
                      if (i != 9)
                      {
                        if (i != 3)
                        {
                          if (i != 4)
                          {
                            if (i != 5)
                            {
                              if (i != 6)
                              {
                                localObject1 = new java/lang/StringBuilder;
                                ((StringBuilder)localObject1).<init>();
                                ((StringBuilder)localObject1).append("invalide type");
                                ((StringBuilder)localObject1).append(((VariableBinder.TypedValue)localObject2).mTypeStr);
                                Log.w("ContentProviderBinder", ((StringBuilder)localObject1).toString());
                              }
                              else
                              {
                                d = paramCursor.getDouble(j);
                              }
                            }
                            else {
                              d = paramCursor.getFloat(j);
                            }
                          }
                          else {
                            d = paramCursor.getLong(j);
                          }
                        }
                        else {
                          d = paramCursor.getInt(j);
                        }
                        ((VariableBinder.Variable)localObject2).set(d);
                      }
                      else
                      {
                        localObject1 = new java/util/ArrayList;
                        ((ArrayList)localObject1).<init>();
                        do
                        {
                          ((List)localObject1).add(paramCursor.getString(j));
                        } while (paramCursor.moveToNext());
                        ((VariableBinder.Variable)localObject2).set(((List)localObject1).toArray());
                      }
                    }
                    else
                    {
                      localObject1 = new java/util/ArrayList;
                      ((ArrayList)localObject1).<init>();
                      do
                      {
                        ((List)localObject1).add(Double.valueOf(paramCursor.getDouble(j)));
                      } while (paramCursor.moveToNext());
                      ((VariableBinder.Variable)localObject2).set(((List)localObject1).toArray());
                    }
                  }
                  else
                  {
                    localObject1 = null;
                    byte[] arrayOfByte = paramCursor.getBlob(j);
                    if (arrayOfByte != null) {
                      localObject1 = BitmapFactory.decodeByteArray(arrayOfByte, 0, arrayOfByte.length);
                    }
                    if (((VariableBinder.TypedValue)localObject2).mType == 7)
                    {
                      ((VariableBinder.Variable)localObject2).set(localObject1);
                    }
                    else
                    {
                      localObject2 = localVariable.getImageElement(this.mRoot);
                      if (localObject2 != null) {
                        ((ImageScreenElement)localObject2).setBitmap((Bitmap)localObject1);
                      }
                    }
                  }
                }
                else {
                  ((VariableBinder.Variable)localObject2).set(paramCursor.getString(j));
                }
              }
              else
              {
                localVariable.setNull(this.mRoot);
              }
            }
            catch (Exception localException)
            {
              Log.e("ContentProviderBinder", localException.toString());
            }
            catch (IllegalArgumentException localIllegalArgumentException)
            {
              StringBuilder localStringBuilder = new StringBuilder();
              localStringBuilder.append("column does not exist: ");
              localStringBuilder.append(localVariable.mColumn);
              Log.e("ContentProviderBinder", localStringBuilder.toString());
            }
            catch (NumberFormatException localNumberFormatException)
            {
              Log.w("ContentProviderBinder", String.format("failed to get value from cursor", new Object[0]));
            }
          }
        }
      }
      return;
    }
    paramCursor = this.mVariables.iterator();
    while (paramCursor.hasNext()) {
      ((Variable)paramCursor.next()).setNull(this.mRoot);
    }
  }
  
  public void createCountVar()
  {
    String str = this.mCountName;
    if (str == null) {
      this.mCountVar = null;
    } else {
      this.mCountVar = new IndexedVariable(str, getContext().mVariables, true);
    }
  }
  
  public void finish()
  {
    synchronized (this.mLock)
    {
      this.mAllowReg = false;
      this.mLastUri = null;
      registerObserver(null, false);
      this.mHandler.removeCallbacks(this.mUpdater);
      setBlockedColumns(null);
      super.finish();
      return;
    }
  }
  
  public final String getUriText()
  {
    return this.mUriFormatter.getText();
  }
  
  public void onContentChanged()
  {
    Log.i("ContentProviderBinder", "ChangeObserver: content changed.");
    if (this.mFinished) {
      return;
    }
    if ((this.mPaused) && (!this.mAwareChangeWhilePause)) {
      this.mNeedsRequery = true;
    } else {
      startQuery();
    }
  }
  
  protected Variable onLoadVariable(Element paramElement)
  {
    return new Variable(paramElement, getContext().mVariables);
  }
  
  public void pause()
  {
    super.pause();
    this.mHandler.removeCallbacks(this.mUpdater);
  }
  
  public void refresh()
  {
    super.refresh();
    startQuery();
  }
  
  public void resume()
  {
    super.resume();
    if (this.mNeedsRequery) {
      startQuery();
    } else {
      checkUpdate();
    }
  }
  
  public final void setBlockedColumns(String[] paramArrayOfString)
  {
    Object localObject1;
    if (paramArrayOfString != null)
    {
      localObject1 = new HashSet();
      int i = paramArrayOfString.length;
      for (int j = 0;; j++)
      {
        localObject2 = localObject1;
        if (j >= i) {
          break;
        }
        ((HashSet)localObject1).add(paramArrayOfString[j]);
      }
    }
    Object localObject2 = null;
    paramArrayOfString = this.mVariables.iterator();
    while (paramArrayOfString.hasNext())
    {
      localObject1 = (Variable)paramArrayOfString.next();
      boolean bool;
      if (localObject2 != null) {
        bool = localObject2.contains(((Variable)localObject1).mColumn);
      } else {
        bool = false;
      }
      ((Variable)localObject1).mBlocked = bool;
    }
  }
  
  public void startQuery()
  {
    if (this.mFinished) {
      return;
    }
    String str = getUriText();
    if (str == null)
    {
      Log.e("ContentProviderBinder", "start query: uri null");
      return;
    }
    if (!this.mSystemBootCompleted)
    {
      boolean bool = "1".equals(SystemProperties.get("sys.boot_completed"));
      this.mSystemBootCompleted = bool;
      if (!bool) {
        return;
      }
    }
    this.mNeedsRequery = false;
    this.mQueryHandler.cancelOperation(100);
    Uri localUri = Uri.parse(str);
    if (localUri == null) {
      return;
    }
    if ((this.mUpdateInterval == -1) && (!localUri.equals(this.mLastUri)))
    {
      registerObserver(localUri, true);
      this.mLastUri = localUri;
    }
    str = this.mWhereFormatter.getText();
    this.mQueryHandler.startQuery(100, null, localUri, this.mColumns, str, this.mArgs, this.mOrder);
    this.mLastQueryTime = System.currentTimeMillis();
    checkUpdate();
  }
  
  public static class Builder
  {
    private ContentProviderBinder mBinder;
    
    protected Builder(ContentProviderBinder paramContentProviderBinder)
    {
      this.mBinder = paramContentProviderBinder;
    }
    
    public void addVariable(String paramString1, String paramString2, String paramString3, int paramInt, Variables paramVariables)
    {
      paramString1 = new ContentProviderBinder.Variable(paramString1, paramString2, paramVariables);
      paramString1.mColumn = paramString3;
      paramString1.mRow = paramInt;
      this.mBinder.addVariable(paramString1);
    }
    
    public Builder setArgs(String[] paramArrayOfString)
    {
      this.mBinder.mArgs = paramArrayOfString;
      return this;
    }
    
    public Builder setColumns(String[] paramArrayOfString)
    {
      this.mBinder.mColumns = paramArrayOfString;
      return this;
    }
    
    public Builder setCountName(String paramString)
    {
      ContentProviderBinder localContentProviderBinder = this.mBinder;
      localContentProviderBinder.mCountName = paramString;
      localContentProviderBinder.createCountVar();
      return this;
    }
    
    public Builder setName(String paramString)
    {
      this.mBinder.mName = paramString;
      return this;
    }
    
    public Builder setOrder(String paramString)
    {
      this.mBinder.mOrder = paramString;
      return this;
    }
    
    public Builder setWhere(String paramString)
    {
      ContentProviderBinder localContentProviderBinder = this.mBinder;
      localContentProviderBinder.mWhereFormatter = new TextFormatter(localContentProviderBinder.getVariables(), paramString);
      return this;
    }
    
    public Builder setWhere(String paramString1, String paramString2)
    {
      ContentProviderBinder localContentProviderBinder = this.mBinder;
      localContentProviderBinder.mWhereFormatter = new TextFormatter(localContentProviderBinder.getVariables(), paramString1, paramString2);
      return this;
    }
  }
  
  protected class ChangeObserver
    extends ContentObserver
  {
    public ChangeObserver()
    {
      super();
    }
    
    public boolean deliverSelfNotifications()
    {
      return true;
    }
    
    public void onChange(boolean paramBoolean)
    {
      ContentProviderBinder.this.onContentChanged();
    }
  }
  
  private static class List
  {
    private ListScreenElement mList;
    private int mMaxCount;
    private String mName;
    private ScreenElementRoot mRoot;
    
    public List(Element paramElement, ScreenElementRoot paramScreenElementRoot)
    {
      this.mName = paramElement.getAttribute("name");
      this.mMaxCount = Utils.getAttrAsInt(paramElement, "maxCount", 2147483647);
      this.mRoot = paramScreenElementRoot;
    }
    
    public void fill(Cursor paramCursor)
    {
      if (paramCursor == null) {
        return;
      }
      if (this.mList == null)
      {
        localObject1 = this.mRoot.findElement(this.mName);
        if ((localObject1 instanceof ListScreenElement)) {
          this.mList = ((ListScreenElement)localObject1);
        }
        if (this.mList == null)
        {
          paramCursor = new StringBuilder();
          paramCursor.append("fail to find list: ");
          paramCursor.append(this.mName);
          Log.e("ContentProviderBinder", paramCursor.toString());
          return;
        }
      }
      this.mList.removeAllItems();
      Object localObject1 = this.mList.getColumnsInfo();
      int i = ((ArrayList)localObject1).size();
      int[] arrayOfInt = new int[i];
      Object[] arrayOfObject = new Object[i];
      int j = 0;
      while (j < i) {
        try
        {
          arrayOfInt[j] = paramCursor.getColumnIndexOrThrow(((ListScreenElement.ColumnInfo)((ArrayList)localObject1).get(j)).mVarName);
          j++;
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          paramCursor = new StringBuilder();
          paramCursor.append("illegal column:");
          paramCursor.append(((ListScreenElement.ColumnInfo)((ArrayList)localObject1).get(j)).mVarName);
          paramCursor.append(" ");
          paramCursor.append(localIllegalArgumentException.toString());
          Log.e("ContentProviderBinder", paramCursor.toString());
          return;
        }
      }
      paramCursor.moveToFirst();
      int k = paramCursor.getCount();
      int m = this.mMaxCount;
      j = k;
      if (k > m) {
        j = m;
      }
      for (m = 0; m < j; m++)
      {
        for (k = 0; k < i; k++)
        {
          localIllegalArgumentException[k] = null;
          ListScreenElement.ColumnInfo localColumnInfo = (ListScreenElement.ColumnInfo)((ArrayList)localObject1).get(k);
          int n = arrayOfInt[k];
          if (!paramCursor.isNull(n))
          {
            Object localObject2 = ContentProviderBinder.2.$SwitchMap$com$miui$maml$elements$ListScreenElement$ColumnInfo$Type;
            int i1 = localObject2[localColumnInfo.mType.ordinal()];
            if (i1 != 5)
            {
              if (i1 != 6)
              {
                i1 = localObject2[localColumnInfo.mType.ordinal()];
                if (i1 != 1)
                {
                  if (i1 != 2)
                  {
                    if (i1 != 3)
                    {
                      if (i1 == 4) {
                        localIllegalArgumentException[k] = Long.valueOf(paramCursor.getLong(n));
                      }
                    }
                    else {
                      localIllegalArgumentException[k] = Integer.valueOf(paramCursor.getInt(n));
                    }
                  }
                  else {
                    localIllegalArgumentException[k] = Float.valueOf(paramCursor.getFloat(n));
                  }
                }
                else {
                  localIllegalArgumentException[k] = Double.valueOf(paramCursor.getDouble(n));
                }
              }
              else
              {
                localObject2 = paramCursor.getBlob(n);
                if (localObject2 != null) {
                  localIllegalArgumentException[k] = BitmapFactory.decodeByteArray((byte[])localObject2, 0, localObject2.length);
                }
              }
            }
            else {
              localIllegalArgumentException[k] = paramCursor.getString(n);
            }
          }
        }
        this.mList.addItem(localIllegalArgumentException);
        paramCursor.moveToNext();
      }
    }
  }
  
  public static abstract interface QueryCompleteListener
  {
    public abstract void onQueryCompleted(String paramString);
  }
  
  private final class QueryHandler
    extends AsyncQueryHandler
  {
    public QueryHandler(Context paramContext)
    {
      super(paramContext.getContentResolver());
    }
    
    protected Handler createHandler(Looper paramLooper)
    {
      return new CatchingWorkerHandler(paramLooper);
    }
    
    void doUpdateOfCursor(Cursor paramCursor)
    {
      ContentProviderBinder localContentProviderBinder = ContentProviderBinder.this;
      if (!localContentProviderBinder.mFinished) {
        localContentProviderBinder.updateVariables(paramCursor);
      }
    }
    
    protected void onQueryComplete(int paramInt, Object paramObject)
    {
      ContentProviderBinder.this.onQueryComplete();
    }
    
    protected class CatchingWorkerHandler
      extends AsyncQueryHandler.WorkerHandler
    {
      public CatchingWorkerHandler(Looper paramLooper)
      {
        super(paramLooper);
      }
      
      public void handleMessage(Message paramMessage)
      {
        try
        {
          super.handleMessage(paramMessage);
        }
        catch (SQLiteDatabaseCorruptException paramMessage)
        {
          Log.w("ContentProviderBinder", "Exception on background worker thread", paramMessage);
        }
        catch (SQLiteFullException paramMessage)
        {
          Log.w("ContentProviderBinder", "Exception on background worker thread", paramMessage);
        }
        catch (SQLiteDiskIOException paramMessage)
        {
          Log.w("ContentProviderBinder", "Exception on background worker thread", paramMessage);
        }
      }
    }
  }
  
  private static class Variable
    extends VariableBinder.Variable
  {
    public static final int BLOB_BITMAP = 1001;
    public boolean mBlocked;
    public String mColumn;
    private ImageScreenElement mImageVar;
    private boolean mNoImageElement;
    public int mRow;
    
    public Variable(String paramString1, String paramString2, Variables paramVariables)
    {
      super(paramString2, paramVariables);
    }
    
    public Variable(Element paramElement, Variables paramVariables)
    {
      super(paramVariables);
      this.mColumn = paramElement.getAttribute("column");
      this.mRow = Utils.getAttrAsInt(paramElement, "row", 0);
    }
    
    public ImageScreenElement getImageElement(ScreenElementRoot paramScreenElementRoot)
    {
      if ((this.mImageVar == null) && (!this.mNoImageElement))
      {
        paramScreenElementRoot = (ImageScreenElement)paramScreenElementRoot.findElement(this.mName);
        this.mImageVar = paramScreenElementRoot;
        boolean bool;
        if (paramScreenElementRoot == null) {
          bool = true;
        } else {
          bool = false;
        }
        this.mNoImageElement = bool;
      }
      return this.mImageVar;
    }
    
    protected int parseType(String paramString)
    {
      int i = super.parseType(paramString);
      if ("blob.bitmap".equalsIgnoreCase(this.mTypeStr)) {
        i = 1001;
      } else {
        this.mNoImageElement = true;
      }
      return i;
    }
    
    public void setNull(ScreenElementRoot paramScreenElementRoot)
    {
      if (getImageElement(paramScreenElementRoot) != null) {
        getImageElement(paramScreenElementRoot).setBitmap(null);
      } else {
        set(null);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.data.ContentProviderBinder
 * JD-Core Version:    0.7.0.1
 */