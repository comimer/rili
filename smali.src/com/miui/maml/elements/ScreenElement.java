package com.miui.maml.elements;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.miui.maml.CommandTriggers;
import com.miui.maml.FramerateTokenList.FramerateToken;
import com.miui.maml.NotifierManager;
import com.miui.maml.RendererController;
import com.miui.maml.ScreenContext;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.StylesManager.Style;
import com.miui.maml.animation.BaseAnimation;
import com.miui.maml.data.Expression;
import com.miui.maml.data.IndexedVariable;
import com.miui.maml.data.Variables;
import com.miui.maml.util.StyleHelper;
import com.miui.maml.util.Utils;
import com.miui.maml.util.Utils.XmlTraverseListener;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

public abstract class ScreenElement
{
  public static final String ACTUAL_H = "actual_h";
  public static final String ACTUAL_W = "actual_w";
  public static final String ACTUAL_X = "actual_x";
  public static final String ACTUAL_Y = "actual_y";
  private static final String LOG_TAG = "MAML ScreenElement";
  public static final String VISIBILITY = "visibility";
  public static final int VISIBILITY_FALSE = 0;
  public static final int VISIBILITY_TRUE = 1;
  private IndexedVariable mActualHeightVar;
  private IndexedVariable mActualWidthVar;
  protected Align mAlign;
  protected AlignV mAlignV;
  protected ArrayList<BaseAnimation> mAnimations;
  protected RendererController mAvailableController;
  protected String mCategory;
  private float mCurFramerate;
  private FramerateTokenList.FramerateToken mFramerateToken;
  protected boolean mHasName;
  private boolean mInitShow = true;
  private boolean mIsVisible = true;
  protected String mName;
  protected ElementGroup mParent;
  protected boolean mResumed;
  protected ScreenElementRoot mRoot;
  private boolean mShow = true;
  protected StylesManager.Style mStyle;
  protected CommandTriggers mTriggers;
  private Expression mVisibilityExpression;
  private IndexedVariable mVisibilityVar;
  
  public ScreenElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    this.mRoot = paramScreenElementRoot;
    if ((paramElement != null) && (paramScreenElementRoot != null)) {
      this.mStyle = paramScreenElementRoot.getStyle(paramElement.getAttribute("style"));
    }
    load(paramElement);
  }
  
  protected static boolean isTagEnable(String[] paramArrayOfString, String paramString)
  {
    if (paramArrayOfString == null)
    {
      if (TextUtils.isEmpty(paramString)) {
        return true;
      }
    }
    else if (Utils.arrayContains(paramArrayOfString, paramString)) {
      return true;
    }
    return false;
  }
  
  private void load(Element paramElement)
  {
    if (paramElement == null) {
      return;
    }
    this.mCategory = getAttr(paramElement, "category");
    Object localObject1 = getAttr(paramElement, "name");
    this.mName = ((String)localObject1);
    boolean bool = TextUtils.isEmpty((CharSequence)localObject1) ^ true;
    this.mHasName = bool;
    if (bool)
    {
      localObject2 = getAttr(paramElement, "namesSuffix");
      if (!TextUtils.isEmpty((CharSequence)localObject2))
      {
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append(this.mName);
        ((StringBuilder)localObject1).append((String)localObject2);
        this.mName = ((StringBuilder)localObject1).toString();
      }
      if (!Boolean.parseBoolean(getAttr(paramElement, "dontAddToMap"))) {
        getRoot().addElement(this.mName, new WeakReference(this));
      }
    }
    localObject1 = getAttr(paramElement, "visibility");
    if (!TextUtils.isEmpty((CharSequence)localObject1)) {
      if (((String)localObject1).equalsIgnoreCase("false")) {
        this.mInitShow = false;
      } else if (((String)localObject1).equalsIgnoreCase("true")) {
        this.mInitShow = true;
      } else {
        this.mVisibilityExpression = Expression.build(getVariables(), (String)localObject1);
      }
    }
    Align localAlign = Align.LEFT;
    this.mAlign = localAlign;
    Object localObject2 = getAttr(paramElement, "align");
    localObject1 = localObject2;
    if (TextUtils.isEmpty((CharSequence)localObject2)) {
      localObject1 = getAttr(paramElement, "alignH");
    }
    if (((String)localObject1).equalsIgnoreCase("right")) {
      this.mAlign = Align.RIGHT;
    } else if (((String)localObject1).equalsIgnoreCase("left")) {
      this.mAlign = localAlign;
    } else if (((String)localObject1).equalsIgnoreCase("center")) {
      this.mAlign = Align.CENTER;
    }
    localObject2 = AlignV.TOP;
    this.mAlignV = ((AlignV)localObject2);
    localObject1 = getAttr(paramElement, "alignV");
    if (((String)localObject1).equalsIgnoreCase("bottom")) {
      this.mAlignV = AlignV.BOTTOM;
    } else if (((String)localObject1).equalsIgnoreCase("top")) {
      this.mAlignV = ((AlignV)localObject2);
    } else if (((String)localObject1).equalsIgnoreCase("center")) {
      this.mAlignV = AlignV.CENTER;
    }
    loadTriggers(paramElement);
    loadAnimations(paramElement);
  }
  
  private void loadAnimations(Element paramElement)
  {
    Utils.traverseXmlElementChildren(paramElement, null, new Utils.XmlTraverseListener()
    {
      public void onChild(Element paramAnonymousElement)
      {
        Object localObject = paramAnonymousElement.getNodeName();
        if (((String)localObject).endsWith("Animation"))
        {
          localObject = ScreenElement.this.onCreateAnimation((String)localObject, paramAnonymousElement);
          if (localObject != null)
          {
            paramAnonymousElement = ScreenElement.this;
            if (paramAnonymousElement.mAnimations == null) {
              paramAnonymousElement.mAnimations = new ArrayList();
            }
            ScreenElement.this.mAnimations.add(localObject);
          }
        }
      }
    });
  }
  
  private void setVisibilityVar(boolean paramBoolean)
  {
    if (this.mHasName)
    {
      if (this.mVisibilityVar == null)
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append(this.mName);
        ((StringBuilder)localObject).append(".");
        ((StringBuilder)localObject).append("visibility");
        this.mVisibilityVar = new IndexedVariable(((StringBuilder)localObject).toString(), getContext().mVariables, true);
      }
      Object localObject = this.mVisibilityVar;
      double d;
      if (paramBoolean) {
        d = 1.0D;
      } else {
        d = 0.0D;
      }
      ((IndexedVariable)localObject).set(d);
    }
  }
  
  public void acceptVisitor(ScreenElementVisitor paramScreenElementVisitor)
  {
    paramScreenElementVisitor.visit(this);
  }
  
  public FramerateTokenList.FramerateToken createToken(String paramString)
  {
    RendererController localRendererController = getRendererController();
    if (localRendererController == null) {
      return null;
    }
    return localRendererController.createToken(paramString);
  }
  
  protected final double descale(double paramDouble)
  {
    return paramDouble / this.mRoot.getScale();
  }
  
  protected abstract void doRender(Canvas paramCanvas);
  
  protected void doTick(long paramLong)
  {
    ArrayList localArrayList = this.mAnimations;
    if (localArrayList != null)
    {
      int i = localArrayList.size();
      for (int j = 0; j < i; j++) {
        ((BaseAnimation)this.mAnimations.get(j)).tick(paramLong);
      }
    }
  }
  
  protected final double evaluate(Expression paramExpression)
  {
    double d;
    if (paramExpression == null) {
      d = 0.0D;
    } else {
      d = paramExpression.evaluate();
    }
    return d;
  }
  
  protected final String evaluateStr(Expression paramExpression)
  {
    if (paramExpression == null) {
      paramExpression = null;
    } else {
      paramExpression = paramExpression.evaluateStr();
    }
    return paramExpression;
  }
  
  public ScreenElement findElement(String paramString)
  {
    String str = this.mName;
    if ((str != null) && (str.equals(paramString))) {
      paramString = this;
    } else {
      paramString = null;
    }
    return paramString;
  }
  
  public void finish()
  {
    Object localObject = this.mTriggers;
    if (localObject != null) {
      ((CommandTriggers)localObject).finish();
    }
    localObject = this.mAnimations;
    if (localObject != null)
    {
      int i = ((ArrayList)localObject).size();
      for (int j = 0; j < i; j++) {
        ((BaseAnimation)this.mAnimations.get(j)).finish();
      }
    }
  }
  
  protected String getAttr(Element paramElement, String paramString)
  {
    return StyleHelper.getAttr(paramElement, paramString, this.mStyle);
  }
  
  protected float getAttrAsFloat(Element paramElement, String paramString, float paramFloat)
  {
    paramElement = getAttr(paramElement, paramString);
    if (!TextUtils.isEmpty(paramElement)) {}
    try
    {
      float f = Float.parseFloat(paramElement);
      return f;
    }
    catch (NumberFormatException paramElement)
    {
      label23:
      break label23;
    }
    return paramFloat;
  }
  
  protected int getAttrAsInt(Element paramElement, String paramString, int paramInt)
  {
    paramElement = getAttr(paramElement, paramString);
    if (!TextUtils.isEmpty(paramElement)) {}
    try
    {
      int i = Integer.parseInt(paramElement);
      return i;
    }
    catch (NumberFormatException paramElement)
    {
      label23:
      break label23;
    }
    return paramInt;
  }
  
  protected long getAttrAsLong(Element paramElement, String paramString, long paramLong)
  {
    paramElement = getAttr(paramElement, paramString);
    if (!TextUtils.isEmpty(paramElement)) {}
    try
    {
      long l = Long.parseLong(paramElement);
      return l;
    }
    catch (NumberFormatException paramElement)
    {
      label23:
      break label23;
    }
    return paramLong;
  }
  
  public ScreenContext getContext()
  {
    return this.mRoot.getContext();
  }
  
  protected final float getFramerate()
  {
    FramerateTokenList.FramerateToken localFramerateToken = this.mFramerateToken;
    float f;
    if (localFramerateToken == null) {
      f = 0.0F;
    } else {
      f = localFramerateToken.getFramerate();
    }
    return f;
  }
  
  protected float getLeft(float paramFloat1, float paramFloat2)
  {
    if (paramFloat2 <= 0.0F) {
      return paramFloat1;
    }
    int i = 2.$SwitchMap$com$miui$maml$elements$ScreenElement$Align[this.mAlign.ordinal()];
    if (i != 1)
    {
      if (i != 2) {
        return paramFloat1;
      }
    }
    else {
      paramFloat2 /= 2.0F;
    }
    paramFloat1 -= paramFloat2;
    return paramFloat1;
  }
  
  public String getName()
  {
    return this.mName;
  }
  
  protected final NotifierManager getNotifierManager()
  {
    return NotifierManager.getInstance(getContext().mContext);
  }
  
  public ElementGroup getParent()
  {
    return this.mParent;
  }
  
  public RendererController getRendererController()
  {
    Object localObject = this.mParent;
    if (localObject != null) {
      localObject = ((ScreenElement)localObject).getRendererController();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public ScreenElementRoot getRoot()
  {
    return this.mRoot;
  }
  
  protected float getTop(float paramFloat1, float paramFloat2)
  {
    if (paramFloat2 <= 0.0F) {
      return paramFloat1;
    }
    int i = 2.$SwitchMap$com$miui$maml$elements$ScreenElement$AlignV[this.mAlignV.ordinal()];
    if (i != 1)
    {
      if (i != 2) {
        return paramFloat1;
      }
    }
    else {
      paramFloat2 /= 2.0F;
    }
    paramFloat1 -= paramFloat2;
    return paramFloat1;
  }
  
  public final Variables getVariables()
  {
    return getContext().mVariables;
  }
  
  public void init()
  {
    this.mShow = this.mInitShow;
    Object localObject = this.mFramerateToken;
    if (localObject != null) {
      removeToken((FramerateTokenList.FramerateToken)localObject);
    }
    this.mFramerateToken = null;
    localObject = this.mTriggers;
    if (localObject != null) {
      ((CommandTriggers)localObject).init();
    }
    setAnim(null);
    localObject = this.mAnimations;
    if (localObject != null)
    {
      int i = ((ArrayList)localObject).size();
      for (int j = 0; j < i; j++) {
        ((BaseAnimation)this.mAnimations.get(j)).init();
      }
    }
    updateVisibility();
    setVisibilityVar(isVisible());
    performAction("init");
  }
  
  public boolean isVisible()
  {
    return this.mIsVisible;
  }
  
  protected boolean isVisibleInner()
  {
    if (this.mShow)
    {
      Object localObject = this.mVisibilityExpression;
      if ((localObject == null) || (((Expression)localObject).evaluate() > 0.0D))
      {
        localObject = this.mParent;
        if ((localObject == null) || (((ScreenElement)localObject).isVisible())) {
          return true;
        }
      }
    }
    boolean bool = false;
    return bool;
  }
  
  protected void loadTriggers(Element paramElement)
  {
    paramElement = Utils.getChild(paramElement, "Triggers");
    if (paramElement != null) {
      this.mTriggers = new CommandTriggers(paramElement, this);
    }
  }
  
  protected BaseAnimation onCreateAnimation(String paramString, Element paramElement)
  {
    return null;
  }
  
  public boolean onHover(MotionEvent paramMotionEvent)
  {
    return false;
  }
  
  protected void onSetAnimBefore() {}
  
  protected void onSetAnimEnable(BaseAnimation paramBaseAnimation) {}
  
  public boolean onTouch(MotionEvent paramMotionEvent)
  {
    return false;
  }
  
  protected void onVisibilityChange(boolean paramBoolean)
  {
    setVisibilityVar(paramBoolean);
    if (!paramBoolean)
    {
      this.mCurFramerate = getFramerate();
      requestFramerate(0.0F);
    }
    else
    {
      requestFramerate(this.mCurFramerate);
    }
  }
  
  public void pause()
  {
    int i = 0;
    this.mResumed = false;
    Object localObject = this.mTriggers;
    if (localObject != null) {
      ((CommandTriggers)localObject).pause();
    }
    localObject = this.mAnimations;
    if (localObject != null)
    {
      int j = ((ArrayList)localObject).size();
      while (i < j)
      {
        ((BaseAnimation)this.mAnimations.get(i)).pause();
        i++;
      }
    }
  }
  
  public final void pauseAnim()
  {
    long l = SystemClock.elapsedRealtime();
    pauseAnim(l);
    doTick(l);
  }
  
  protected void pauseAnim(long paramLong)
  {
    ArrayList localArrayList = this.mAnimations;
    if (localArrayList != null)
    {
      int i = localArrayList.size();
      for (int j = 0; j < i; j++) {
        ((BaseAnimation)this.mAnimations.get(j)).pauseAnim(paramLong);
      }
    }
  }
  
  public void performAction(String paramString)
  {
    CommandTriggers localCommandTriggers = this.mTriggers;
    if ((localCommandTriggers != null) && (paramString != null))
    {
      localCommandTriggers.onAction(paramString);
      requestUpdate();
    }
  }
  
  public final void playAnim()
  {
    playAnim(0L, -1L, true, true);
  }
  
  protected void playAnim(long paramLong1, long paramLong2, long paramLong3, boolean paramBoolean1, boolean paramBoolean2)
  {
    ArrayList localArrayList = this.mAnimations;
    if (localArrayList != null)
    {
      int i = localArrayList.size();
      for (int j = 0; j < i; j++) {
        ((BaseAnimation)this.mAnimations.get(j)).playAnim(paramLong1, paramLong2, paramLong3, paramBoolean1, paramBoolean2);
      }
    }
  }
  
  public final void playAnim(long paramLong1, long paramLong2, boolean paramBoolean1, boolean paramBoolean2)
  {
    long l = SystemClock.elapsedRealtime();
    playAnim(l, paramLong1, paramLong2, paramBoolean1, paramBoolean2);
    doTick(l);
  }
  
  protected final void postInMainThread(Runnable paramRunnable)
  {
    getContext().getHandler().post(paramRunnable);
  }
  
  public void postRunnable(Runnable paramRunnable)
  {
    RendererController localRendererController = this.mRoot.getRendererController();
    if (localRendererController != null) {
      localRendererController.postRunnable(paramRunnable);
    }
  }
  
  public void postRunnableAtFrontOfQueue(Runnable paramRunnable)
  {
    RendererController localRendererController = this.mRoot.getRendererController();
    if (localRendererController != null) {
      localRendererController.postRunnableAtFrontOfQueue(paramRunnable);
    }
  }
  
  public void removeToken(FramerateTokenList.FramerateToken paramFramerateToken)
  {
    RendererController localRendererController = getRendererController();
    if (localRendererController != null) {
      localRendererController.removeToken(paramFramerateToken);
    }
  }
  
  public void render(Canvas paramCanvas)
  {
    updateVisibility();
    if (!isVisible()) {
      return;
    }
    doRender(paramCanvas);
  }
  
  protected final void requestFramerate(float paramFloat)
  {
    if (paramFloat < 0.0F) {
      return;
    }
    if (this.mFramerateToken == null)
    {
      if (paramFloat == 0.0F) {
        return;
      }
      this.mFramerateToken = createToken(toString());
    }
    if (this.mFramerateToken != null)
    {
      float f = this.mRoot.getSystemFrameRate();
      FramerateTokenList.FramerateToken localFramerateToken = this.mFramerateToken;
      if (paramFloat > f) {
        paramFloat = f;
      }
      localFramerateToken.requestFramerate(paramFloat);
    }
  }
  
  public void requestUpdate()
  {
    RendererController localRendererController = getRendererController();
    if (localRendererController != null) {
      localRendererController.forceUpdate();
    }
  }
  
  public final void reset()
  {
    long l = SystemClock.elapsedRealtime();
    reset(l);
    doTick(l);
  }
  
  public void reset(long paramLong)
  {
    ArrayList localArrayList = this.mAnimations;
    if (localArrayList != null)
    {
      int i = localArrayList.size();
      for (int j = 0; j < i; j++) {
        ((BaseAnimation)this.mAnimations.get(j)).reset(paramLong);
      }
    }
  }
  
  public void resume()
  {
    this.mResumed = true;
    Object localObject = this.mTriggers;
    if (localObject != null) {
      ((CommandTriggers)localObject).resume();
    }
    localObject = this.mAnimations;
    if (localObject != null)
    {
      int i = ((ArrayList)localObject).size();
      for (int j = 0; j < i; j++) {
        ((BaseAnimation)this.mAnimations.get(j)).resume();
      }
    }
  }
  
  public final void resumeAnim()
  {
    long l = SystemClock.elapsedRealtime();
    resumeAnim(l);
    doTick(l);
  }
  
  protected void resumeAnim(long paramLong)
  {
    ArrayList localArrayList = this.mAnimations;
    if (localArrayList != null)
    {
      int i = localArrayList.size();
      for (int j = 0; j < i; j++) {
        ((BaseAnimation)this.mAnimations.get(j)).resumeAnim(paramLong);
      }
    }
  }
  
  protected final float scale(double paramDouble)
  {
    return (float)(paramDouble * this.mRoot.getScale());
  }
  
  protected void setActualHeight(double paramDouble)
  {
    if (!this.mHasName) {
      return;
    }
    if (this.mActualHeightVar == null)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(this.mName);
      localStringBuilder.append(".");
      localStringBuilder.append("actual_h");
      this.mActualHeightVar = new IndexedVariable(localStringBuilder.toString(), getVariables(), true);
    }
    this.mActualHeightVar.set(paramDouble);
  }
  
  protected void setActualWidth(double paramDouble)
  {
    if (!this.mHasName) {
      return;
    }
    if (this.mActualWidthVar == null)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(this.mName);
      localStringBuilder.append(".");
      localStringBuilder.append("actual_w");
      this.mActualWidthVar = new IndexedVariable(localStringBuilder.toString(), getVariables(), true);
    }
    this.mActualWidthVar.set(paramDouble);
  }
  
  public void setAnim(String[] paramArrayOfString)
  {
    if (this.mAnimations != null)
    {
      onSetAnimBefore();
      int i = this.mAnimations.size();
      for (int j = 0; j < i; j++)
      {
        BaseAnimation localBaseAnimation = (BaseAnimation)this.mAnimations.get(j);
        boolean bool = isTagEnable(paramArrayOfString, localBaseAnimation.getTag());
        localBaseAnimation.setDisable(bool ^ true);
        if (bool) {
          onSetAnimEnable(localBaseAnimation);
        }
      }
    }
  }
  
  public final void setAnimations(String paramString)
  {
    if ((!TextUtils.isEmpty(paramString)) && (!".".equals(paramString))) {
      paramString = paramString.split(",");
    } else {
      paramString = null;
    }
    setAnim(paramString);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter) {}
  
  public void setName(String paramString)
  {
    getRoot().removeElement(this.mName);
    this.mName = paramString;
    getRoot().addElement(paramString, new WeakReference(this));
  }
  
  public void setParent(ElementGroup paramElementGroup)
  {
    this.mParent = paramElementGroup;
  }
  
  public void show(boolean paramBoolean)
  {
    this.mShow = paramBoolean;
    updateVisibility();
    requestUpdate();
  }
  
  public void showCategory(String paramString, boolean paramBoolean)
  {
    String str = this.mCategory;
    if ((str != null) && (str.equals(paramString))) {
      show(paramBoolean);
    }
  }
  
  public void tick(long paramLong)
  {
    updateVisibility();
    if (!isVisible()) {
      return;
    }
    doTick(paramLong);
  }
  
  protected void updateVisibility()
  {
    boolean bool = isVisibleInner();
    if (this.mIsVisible != bool)
    {
      this.mIsVisible = bool;
      onVisibilityChange(bool);
      if (bool) {
        doTick(SystemClock.elapsedRealtime());
      }
    }
  }
  
  protected static enum Align
  {
    static
    {
      Align localAlign1 = new Align("LEFT", 0);
      LEFT = localAlign1;
      Align localAlign2 = new Align("CENTER", 1);
      CENTER = localAlign2;
      Align localAlign3 = new Align("RIGHT", 2);
      RIGHT = localAlign3;
      $VALUES = new Align[] { localAlign1, localAlign2, localAlign3 };
    }
    
    private Align() {}
  }
  
  protected static enum AlignV
  {
    static
    {
      AlignV localAlignV1 = new AlignV("TOP", 0);
      TOP = localAlignV1;
      AlignV localAlignV2 = new AlignV("CENTER", 1);
      CENTER = localAlignV2;
      AlignV localAlignV3 = new AlignV("BOTTOM", 2);
      BOTTOM = localAlignV3;
      $VALUES = new AlignV[] { localAlignV1, localAlignV2, localAlignV3 };
    }
    
    private AlignV() {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.ScreenElement
 * JD-Core Version:    0.7.0.1
 */