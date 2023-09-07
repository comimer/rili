package com.miui.maml.elements;

import android.content.Intent;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import com.miui.maml.ActionCommand;
import com.miui.maml.CommandTrigger;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.animation.interpolater.InterpolatorHelper;
import com.miui.maml.data.Expression;
import com.miui.maml.data.IndexedVariable;
import com.miui.maml.data.Variables;
import com.miui.maml.util.IntentInfo;
import com.miui.maml.util.Task;
import com.miui.maml.util.Utils;
import com.miui.maml.util.Utils.Point;
import java.util.ArrayList;
import java.util.Iterator;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

public class AdvancedSlider
  extends ElementGroup
{
  private static final boolean DEBUG = false;
  private static final int DEFAULT_DRAG_TOLERANCE = 150;
  private static final float FREE_ENDPOINT_DIST = 1.701412E+038F;
  private static final String LOG_TAG = "LockScreen_AdvancedSlider";
  public static final String MOVE_DIST = "move_dist";
  public static final String MOVE_X = "move_x";
  public static final String MOVE_Y = "move_y";
  private static final float NONE_ENDPOINT_DIST = 3.4028235E+38F;
  public static final int SLIDER_STATE_NORMAL = 0;
  public static final int SLIDER_STATE_PRESSED = 1;
  public static final int SLIDER_STATE_REACHED = 2;
  public static final String STATE = "state";
  public static final String TAG_NAME = "Slider";
  private EndPoint mCurrentEndPoint;
  private ArrayList<EndPoint> mEndPoints;
  protected boolean mIsHaptic;
  private boolean mIsKeepStatusAfterLaunch;
  private IndexedVariable mMoveDistVar;
  private IndexedVariable mMoveXVar;
  private IndexedVariable mMoveYVar;
  private boolean mMoving;
  private OnLaunchListener mOnLaunchListener;
  private ReboundAnimationController mReboundAnimationController;
  private StartPoint mStartPoint;
  private boolean mStartPointPressed;
  private IndexedVariable mStateVar;
  private float mTouchOffsetX;
  private float mTouchOffsetY;
  
  public AdvancedSlider(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    load(paramElement);
  }
  
  private void cancelMoving()
  {
    resetInner();
    onCancel();
  }
  
  private boolean checkEndPoint(Utils.Point paramPoint, EndPoint paramEndPoint)
  {
    float f1 = (float)paramPoint.x;
    float f2 = (float)paramPoint.y;
    boolean bool = false;
    if (paramEndPoint.touched(f1, f2, false))
    {
      paramPoint = paramEndPoint.getState();
      Object localObject = State.Reached;
      if (paramPoint != localObject)
      {
        paramEndPoint.setState((State)localObject);
        localObject = this.mEndPoints.iterator();
        while (((Iterator)localObject).hasNext())
        {
          paramPoint = (EndPoint)((Iterator)localObject).next();
          if (paramPoint != paramEndPoint) {
            paramPoint.setState(State.Pressed);
          }
        }
        onReach(paramEndPoint.mName);
      }
      bool = true;
    }
    else
    {
      paramEndPoint.setState(State.Pressed);
    }
    return bool;
  }
  
  private CheckTouchResult checkTouch(float paramFloat1, float paramFloat2)
  {
    CheckTouchResult localCheckTouchResult = new CheckTouchResult(null);
    Iterator localIterator = this.mEndPoints.iterator();
    Object localObject1 = null;
    float f1 = 3.4028235E+38F;
    Object localObject2;
    while (localIterator.hasNext())
    {
      EndPoint localEndPoint = (EndPoint)localIterator.next();
      localObject2 = localEndPoint.getNearestPoint(paramFloat1, paramFloat2);
      float f2 = localEndPoint.getTransformedDist((Utils.Point)localObject2, paramFloat1, paramFloat2);
      if (f2 < f1)
      {
        localCheckTouchResult.endPoint = localEndPoint;
        localObject1 = localObject2;
        f1 = f2;
      }
    }
    boolean bool1 = false;
    if (f1 < 3.4028235E+38F)
    {
      moveStartPoint((float)((Utils.Point)localObject1).x, (float)((Utils.Point)localObject1).y);
      boolean bool2;
      if (f1 < 1.701412E+038F)
      {
        bool2 = checkEndPoint((Utils.Point)localObject1, localCheckTouchResult.endPoint);
      }
      else
      {
        localIterator = this.mEndPoints.iterator();
        do
        {
          do
          {
            bool2 = bool1;
            if (!localIterator.hasNext()) {
              break;
            }
            localObject2 = (EndPoint)localIterator.next();
          } while (((EndPoint)localObject2).mPath != null);
          bool2 = checkEndPoint((Utils.Point)localObject1, (EndPoint)localObject2);
          bool1 = bool2;
        } while (!bool2);
        localCheckTouchResult.endPoint = ((EndPoint)localObject2);
      }
      localObject2 = this.mStartPoint;
      if (bool2) {
        localObject1 = State.Reached;
      } else {
        localObject1 = State.Pressed;
      }
      ((SliderPoint)localObject2).setState((State)localObject1);
      if (this.mHasName)
      {
        localObject1 = this.mStateVar;
        double d;
        if (bool2) {
          d = 2.0D;
        } else {
          d = 1.0D;
        }
        ((IndexedVariable)localObject1).set(d);
      }
      localCheckTouchResult.reached = bool2;
      return localCheckTouchResult;
    }
    Log.i("LockScreen_AdvancedSlider", "unlock touch canceled due to exceeding tollerance");
    this.mStartPoint.performAction("cancel");
    return null;
  }
  
  private boolean doLaunch(EndPoint paramEndPoint)
  {
    this.mStartPoint.performAction("launch");
    paramEndPoint.performAction("launch");
    Object localObject = paramEndPoint.mAction;
    if (localObject != null) {
      localObject = ((LaunchAction)localObject).perform();
    } else {
      localObject = null;
    }
    return onLaunch(paramEndPoint.mName, (Intent)localObject);
  }
  
  private void load(Element paramElement)
  {
    if (paramElement == null) {
      return;
    }
    if (this.mHasName)
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(this.mName);
      ((StringBuilder)localObject).append(".");
      ((StringBuilder)localObject).append("state");
      this.mStateVar = new IndexedVariable(((StringBuilder)localObject).toString(), getVariables(), true);
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(this.mName);
      ((StringBuilder)localObject).append(".");
      ((StringBuilder)localObject).append("move_x");
      this.mMoveXVar = new IndexedVariable(((StringBuilder)localObject).toString(), getVariables(), true);
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(this.mName);
      ((StringBuilder)localObject).append(".");
      ((StringBuilder)localObject).append("move_y");
      this.mMoveYVar = new IndexedVariable(((StringBuilder)localObject).toString(), getVariables(), true);
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(this.mName);
      ((StringBuilder)localObject).append(".");
      ((StringBuilder)localObject).append("move_dist");
      this.mMoveDistVar = new IndexedVariable(((StringBuilder)localObject).toString(), getVariables(), true);
    }
    Object localObject = this.mStartPoint;
    if (localObject != null)
    {
      localObject = ((StartPoint)localObject).mReboundController;
      if (localObject != null)
      {
        this.mReboundAnimationController = ((ReboundAnimationController)localObject);
        break label269;
      }
    }
    localObject = new SpeedAccController(paramElement);
    this.mReboundAnimationController = ((ReboundAnimationController)localObject);
    this.mRoot.addPreTicker((ITicker)localObject);
    label269:
    this.mIsHaptic = Boolean.parseBoolean(getAttr(paramElement, "haptic"));
    this.mIsKeepStatusAfterLaunch = Boolean.parseBoolean(getAttr(paramElement, "keepStatusAfterLaunch"));
  }
  
  private void moveStartPoint(float paramFloat1, float paramFloat2)
  {
    paramFloat1 -= this.mStartPoint.getAnchorX();
    paramFloat2 -= this.mStartPoint.getAnchorY();
    this.mStartPoint.moveTo(paramFloat1, paramFloat2);
    if (this.mHasName)
    {
      double d1 = descale(paramFloat1);
      double d2 = descale(paramFloat2);
      double d3 = Math.sqrt(d1 * d1 + d2 * d2);
      this.mMoveXVar.set(d1);
      this.mMoveYVar.set(d2);
      this.mMoveDistVar.set(d3);
    }
  }
  
  public void finish()
  {
    super.finish();
    resetInner();
  }
  
  public void init()
  {
    super.init();
    this.mReboundAnimationController.init();
    resetInner();
  }
  
  protected void onCancel() {}
  
  protected ScreenElement onCreateChild(Element paramElement)
  {
    String str = paramElement.getTagName();
    if (str.equalsIgnoreCase("StartPoint"))
    {
      paramElement = new StartPoint(paramElement, this.mRoot);
      this.mStartPoint = paramElement;
      return paramElement;
    }
    if (str.equalsIgnoreCase("EndPoint"))
    {
      paramElement = new EndPoint(paramElement, this.mRoot);
      if (this.mEndPoints == null) {
        this.mEndPoints = new ArrayList();
      }
      this.mEndPoints.add(paramElement);
      return paramElement;
    }
    return super.onCreateChild(paramElement);
  }
  
  protected boolean onLaunch(String paramString, Intent paramIntent)
  {
    paramIntent = this.mOnLaunchListener;
    if (paramIntent != null) {
      return paramIntent.onLaunch(paramString);
    }
    return this.mIsKeepStatusAfterLaunch;
  }
  
  protected void onMove(float paramFloat1, float paramFloat2) {}
  
  protected void onReach(String paramString)
  {
    if (this.mIsHaptic) {
      this.mRoot.haptic(0);
    }
  }
  
  protected void onRelease()
  {
    if (this.mIsHaptic) {
      this.mRoot.haptic(1);
    }
  }
  
  protected void onStart()
  {
    if (this.mIsHaptic) {
      this.mRoot.haptic(1);
    }
  }
  
  public boolean onTouch(MotionEvent paramMotionEvent)
  {
    boolean bool1 = isVisible();
    boolean bool2 = false;
    if (!bool1) {
      return false;
    }
    float f1 = paramMotionEvent.getX();
    float f2 = paramMotionEvent.getY();
    f1 -= getAbsoluteLeft();
    f2 -= getAbsoluteTop();
    int i = paramMotionEvent.getActionMasked();
    if (i != 0) {
      if (i != 1) {
        if (i != 2)
        {
          if ((i != 3) || (!this.mMoving)) {
            break label488;
          }
          this.mReboundAnimationController.start(null);
          this.mCurrentEndPoint = null;
          this.mMoving = false;
          onRelease();
          this.mStartPoint.performAction("cancel");
        }
      }
    }
    for (;;)
    {
      i = 1;
      break label491;
      if (!this.mMoving) {
        break;
      }
      Object localObject = checkTouch(f1, f2);
      if (localObject != null)
      {
        this.mCurrentEndPoint = ((CheckTouchResult)localObject).endPoint;
        onMove(f1, f2);
      }
      else
      {
        this.mReboundAnimationController.start(this.mCurrentEndPoint);
        this.mMoving = false;
        onRelease();
        continue;
        if (!this.mMoving) {
          break;
        }
        Log.i("LockScreen_AdvancedSlider", "unlock touch up");
        localObject = checkTouch(f1, f2);
        if (localObject != null)
        {
          if (((CheckTouchResult)localObject).reached)
          {
            bool1 = doLaunch(((CheckTouchResult)localObject).endPoint);
          }
          else
          {
            this.mStartPoint.performAction("release");
            EndPoint localEndPoint = ((CheckTouchResult)localObject).endPoint;
            if (localEndPoint != null) {
              localEndPoint.performAction("release");
            }
            bool1 = false;
          }
          this.mCurrentEndPoint = ((CheckTouchResult)localObject).endPoint;
        }
        else
        {
          bool1 = false;
        }
        this.mMoving = false;
        if (!bool1) {
          this.mReboundAnimationController.start(this.mCurrentEndPoint);
        }
        onRelease();
        continue;
        if (!this.mStartPoint.touched(f1, f2, false)) {
          break;
        }
        this.mMoving = true;
        this.mTouchOffsetX = (f1 - this.mStartPoint.getAnchorX());
        this.mTouchOffsetY = (f2 - this.mStartPoint.getAnchorY());
        if (this.mReboundAnimationController.isRunning())
        {
          this.mReboundAnimationController.stopRunning();
          this.mTouchOffsetX -= this.mStartPoint.getOffsetX();
          this.mTouchOffsetY -= this.mStartPoint.getOffsetY();
        }
        this.mStartPoint.setState(State.Pressed);
        localObject = this.mEndPoints.iterator();
        while (((Iterator)localObject).hasNext()) {
          ((EndPoint)((Iterator)localObject).next()).setState(State.Pressed);
        }
        this.mStartPointPressed = true;
        if (this.mHasName) {
          this.mStateVar.set(1.0D);
        }
        this.mReboundAnimationController.init();
        onStart();
      }
    }
    label488:
    i = 0;
    label491:
    if (!super.onTouch(paramMotionEvent))
    {
      bool1 = bool2;
      if (i != 0)
      {
        bool1 = bool2;
        if (!this.mInterceptTouch) {}
      }
    }
    else
    {
      bool1 = true;
    }
    return bool1;
  }
  
  public void pause()
  {
    super.pause();
    resetInner();
  }
  
  public void reset(long paramLong)
  {
    super.reset(paramLong);
    resetInner();
  }
  
  protected void resetInner()
  {
    if (this.mStartPointPressed)
    {
      this.mStartPointPressed = false;
      this.mStartPoint.moveTo(0.0F, 0.0F);
      this.mStartPoint.setState(State.Normal);
      Iterator localIterator = this.mEndPoints.iterator();
      while (localIterator.hasNext()) {
        ((EndPoint)localIterator.next()).setState(State.Normal);
      }
      if (this.mHasName)
      {
        this.mMoveXVar.set(0.0D);
        this.mMoveYVar.set(0.0D);
        this.mMoveDistVar.set(0.0D);
        this.mStateVar.set(0.0D);
      }
      this.mMoving = false;
      requestUpdate();
    }
  }
  
  public void setOnLaunchListener(OnLaunchListener paramOnLaunchListener)
  {
    this.mOnLaunchListener = paramOnLaunchListener;
  }
  
  private class CheckTouchResult
  {
    public AdvancedSlider.EndPoint endPoint;
    public boolean reached;
    
    private CheckTouchResult() {}
  }
  
  private class EndPoint
    extends AdvancedSlider.SliderPoint
  {
    public static final String TAG_NAME = "EndPoint";
    public AdvancedSlider.LaunchAction mAction;
    private ArrayList<AdvancedSlider.Position> mPath;
    private Expression mPathX;
    private Expression mPathY;
    private int mRawTolerance = 150;
    private float mTolerance;
    
    public EndPoint(Element paramElement, ScreenElementRoot paramScreenElementRoot)
    {
      super(paramElement, paramScreenElementRoot, "EndPoint");
      load(paramElement);
    }
    
    private Utils.Point getNearestPoint(float paramFloat1, float paramFloat2)
    {
      if (this.mPath == null) {
        return new Utils.Point(paramFloat1 - AdvancedSlider.this.mTouchOffsetX, paramFloat2 - AdvancedSlider.this.mTouchOffsetY);
      }
      Object localObject1 = null;
      double d1 = 1.7976931348623157E+308D;
      int i = 1;
      while (i < this.mPath.size())
      {
        float f1 = AdvancedSlider.this.mTouchOffsetX;
        float f2 = AdvancedSlider.this.mTouchOffsetY;
        Object localObject2 = (AdvancedSlider.Position)this.mPath.get(i - 1);
        Object localObject3 = (AdvancedSlider.Position)this.mPath.get(i);
        localObject2 = new Utils.Point(((AdvancedSlider.Position)localObject2).getX(), ((AdvancedSlider.Position)localObject2).getY());
        Utils.Point localPoint = new Utils.Point(((AdvancedSlider.Position)localObject3).getX(), ((AdvancedSlider.Position)localObject3).getY());
        localObject3 = new Utils.Point(paramFloat1 - f1, paramFloat2 - f2);
        localObject2 = Utils.pointProjectionOnSegment((Utils.Point)localObject2, localPoint, (Utils.Point)localObject3, true);
        double d2 = Utils.Dist((Utils.Point)localObject2, (Utils.Point)localObject3, false);
        double d3 = d1;
        if (d2 < d1)
        {
          localObject1 = localObject2;
          d3 = d2;
        }
        i++;
        d1 = d3;
      }
      return localObject1;
    }
    
    private void load(Element paramElement)
    {
      loadTask(paramElement);
      loadPath(paramElement);
    }
    
    private void loadPath(Element paramElement)
    {
      Element localElement = Utils.getChild(paramElement, "Path");
      if (localElement == null)
      {
        this.mPath = null;
        return;
      }
      this.mRawTolerance = getAttrAsInt(localElement, "tolerance", 150);
      this.mPath = new ArrayList();
      paramElement = getVariables();
      this.mPathX = Expression.build(paramElement, localElement.getAttribute("x"));
      this.mPathY = Expression.build(paramElement, localElement.getAttribute("y"));
      NodeList localNodeList = localElement.getElementsByTagName("Position");
      for (int i = 0; i < localNodeList.getLength(); i++)
      {
        localElement = (Element)localNodeList.item(i);
        this.mPath.add(new AdvancedSlider.Position(AdvancedSlider.this, paramElement, localElement, this.mPathX, this.mPathY));
      }
    }
    
    private void loadTask(Element paramElement)
    {
      Element localElement1 = Utils.getChild(paramElement, "Intent");
      Element localElement2 = Utils.getChild(paramElement, "Command");
      Element localElement3 = Utils.getChild(paramElement, "Trigger");
      if ((localElement1 == null) && (localElement2 == null) && (localElement3 == null)) {
        return;
      }
      paramElement = new AdvancedSlider.LaunchAction(AdvancedSlider.this, null);
      this.mAction = paramElement;
      if (localElement1 != null)
      {
        paramElement.mIntentInfo = new IntentInfo(localElement1, getVariables());
      }
      else if (localElement2 != null)
      {
        paramElement.mCommand = ActionCommand.create(localElement2, this.mRoot);
        if (this.mAction.mCommand == null)
        {
          paramElement = new StringBuilder();
          paramElement.append("invalid Command element: ");
          paramElement.append(localElement2.toString());
          Log.w("LockScreen_AdvancedSlider", paramElement.toString());
        }
      }
      else if (localElement3 != null)
      {
        paramElement.mTrigger = new CommandTrigger(localElement3, this.mRoot);
      }
    }
    
    public void finish()
    {
      super.finish();
      AdvancedSlider.LaunchAction localLaunchAction = this.mAction;
      if (localLaunchAction != null) {
        localLaunchAction.finish();
      }
    }
    
    public float getTransformedDist(Utils.Point paramPoint, float paramFloat1, float paramFloat2)
    {
      if (this.mPath == null) {
        return 1.701412E+038F;
      }
      if (paramPoint == null) {
        return 3.4028235E+38F;
      }
      float f1 = AdvancedSlider.this.mTouchOffsetX;
      float f2 = AdvancedSlider.this.mTouchOffsetY;
      paramFloat1 = (float)Utils.Dist(paramPoint, new Utils.Point(paramFloat1 - f1, paramFloat2 - f2), true);
      if (paramFloat1 < this.mTolerance) {
        return paramFloat1;
      }
      return 3.4028235E+38F;
    }
    
    public void init()
    {
      super.init();
      AdvancedSlider.LaunchAction localLaunchAction = this.mAction;
      if (localLaunchAction != null) {
        localLaunchAction.init();
      }
      this.mTolerance = scale(this.mRawTolerance);
    }
    
    protected void onStateChange(AdvancedSlider.State paramState1, AdvancedSlider.State paramState2)
    {
      if (paramState1 == AdvancedSlider.State.Invalid) {
        return;
      }
      if (AdvancedSlider.1.$SwitchMap$com$miui$maml$elements$AdvancedSlider$State[paramState2.ordinal()] == 3) {
        this.mRoot.playSound(this.mReachedSound);
      }
      super.onStateChange(paramState1, paramState2);
    }
    
    public void pause()
    {
      super.pause();
      AdvancedSlider.LaunchAction localLaunchAction = this.mAction;
      if (localLaunchAction != null) {
        localLaunchAction.pause();
      }
    }
    
    public void resume()
    {
      super.resume();
      AdvancedSlider.LaunchAction localLaunchAction = this.mAction;
      if (localLaunchAction != null) {
        localLaunchAction.resume();
      }
    }
  }
  
  private class InterpolatorController
    extends AdvancedSlider.ReboundAnimationController
  {
    private InterpolatorHelper mInterpolator;
    private long mReboundTime;
    private Expression mReboundTimeExp;
    
    public InterpolatorController(InterpolatorHelper paramInterpolatorHelper, Expression paramExpression)
    {
      super(null);
      this.mInterpolator = paramInterpolatorHelper;
      this.mReboundTimeExp = paramExpression;
    }
    
    protected long getDistance(long paramLong)
    {
      long l = this.mReboundTime;
      if (paramLong >= l)
      {
        onStop();
        return this.mTotalDistance;
      }
      float f = (float)paramLong / (float)l;
      return (this.mTotalDistance * this.mInterpolator.get(f));
    }
    
    protected void onStart()
    {
      this.mReboundTime = (this.mReboundTimeExp.evaluate());
    }
  }
  
  private class LaunchAction
  {
    public ActionCommand mCommand;
    public boolean mConfigTaskLoaded;
    public IntentInfo mIntentInfo;
    public CommandTrigger mTrigger;
    
    private LaunchAction() {}
    
    private Intent performTask()
    {
      Object localObject = this.mIntentInfo;
      if (localObject == null) {
        return null;
      }
      if (!this.mConfigTaskLoaded)
      {
        localObject = AdvancedSlider.this.mRoot.findTask(((IntentInfo)localObject).getId());
        if ((localObject != null) && (!TextUtils.isEmpty(((Task)localObject).action))) {
          this.mIntentInfo.set((Task)localObject);
        }
        this.mConfigTaskLoaded = true;
      }
      if (Utils.isProtectedIntent(this.mIntentInfo.getAction())) {
        return null;
      }
      localObject = new Intent();
      this.mIntentInfo.update((Intent)localObject);
      ((Intent)localObject).setFlags(872415232);
      return localObject;
    }
    
    public void finish()
    {
      Object localObject = this.mCommand;
      if (localObject != null) {
        ((ActionCommand)localObject).finish();
      }
      localObject = this.mTrigger;
      if (localObject != null) {
        ((CommandTrigger)localObject).finish();
      }
      this.mConfigTaskLoaded = false;
    }
    
    public void init()
    {
      Object localObject = this.mCommand;
      if (localObject != null) {
        ((ActionCommand)localObject).init();
      }
      localObject = this.mTrigger;
      if (localObject != null) {
        ((CommandTrigger)localObject).init();
      }
    }
    
    public void pause()
    {
      Object localObject = this.mCommand;
      if (localObject != null) {
        ((ActionCommand)localObject).pause();
      }
      localObject = this.mTrigger;
      if (localObject != null) {
        ((CommandTrigger)localObject).pause();
      }
    }
    
    public Intent perform()
    {
      if (this.mIntentInfo != null) {
        return performTask();
      }
      Object localObject = this.mCommand;
      if (localObject != null)
      {
        ((ActionCommand)localObject).perform();
      }
      else
      {
        localObject = this.mTrigger;
        if (localObject != null) {
          ((CommandTrigger)localObject).perform();
        }
      }
      return null;
    }
    
    public void resume()
    {
      Object localObject = this.mCommand;
      if (localObject != null) {
        ((ActionCommand)localObject).resume();
      }
      localObject = this.mTrigger;
      if (localObject != null) {
        ((CommandTrigger)localObject).resume();
      }
    }
  }
  
  public static abstract interface OnLaunchListener
  {
    public abstract boolean onLaunch(String paramString);
  }
  
  private class Position
  {
    public static final String TAG_NAME = "Position";
    private Expression mBaseX;
    private Expression mBaseY;
    private Expression mX;
    private Expression mY;
    
    public Position(Variables paramVariables, Element paramElement, Expression paramExpression1, Expression paramExpression2)
    {
      this.mBaseX = paramExpression1;
      this.mBaseY = paramExpression2;
      this.mX = Expression.build(paramVariables, AdvancedSlider.this.getAttr(paramElement, "x"));
      this.mY = Expression.build(paramVariables, AdvancedSlider.this.getAttr(paramElement, "y"));
    }
    
    public float getX()
    {
      AdvancedSlider localAdvancedSlider = AdvancedSlider.this;
      Expression localExpression = this.mX;
      double d1 = 0.0D;
      double d2;
      if (localExpression == null) {
        d2 = 0.0D;
      } else {
        d2 = localExpression.evaluate();
      }
      localExpression = this.mBaseX;
      if (localExpression != null) {
        d1 = localExpression.evaluate();
      }
      return localAdvancedSlider.scale(d2 + d1);
    }
    
    public float getY()
    {
      AdvancedSlider localAdvancedSlider = AdvancedSlider.this;
      Expression localExpression = this.mY;
      double d1 = 0.0D;
      double d2;
      if (localExpression == null) {
        d2 = 0.0D;
      } else {
        d2 = localExpression.evaluate();
      }
      localExpression = this.mBaseY;
      if (localExpression != null) {
        d1 = localExpression.evaluate();
      }
      return localAdvancedSlider.scale(d2 + d1);
    }
  }
  
  private abstract class ReboundAnimationController
    implements ITicker
  {
    private int mBounceStartPointIndex;
    private AdvancedSlider.EndPoint mEndPoint;
    private long mPreDistance;
    protected long mStartTime = -1L;
    private float mStartX;
    private float mStartY;
    protected double mTotalDistance;
    
    private ReboundAnimationController() {}
    
    private Utils.Point getPoint(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, long paramLong)
    {
      Utils.Point localPoint1 = new Utils.Point(paramFloat1, paramFloat2);
      Utils.Point localPoint2 = new Utils.Point(paramFloat3, paramFloat4);
      double d1 = Utils.Dist(localPoint1, localPoint2, true);
      double d2 = paramLong;
      if (d2 >= d1) {
        return null;
      }
      double d3 = (d1 - d2) / d1;
      double d4 = localPoint2.x;
      double d5 = localPoint1.x;
      d1 = localPoint2.y;
      d2 = localPoint1.y;
      return new Utils.Point(d5 + (d4 - d5) * d3, d2 + (d1 - d2) * d3);
    }
    
    protected abstract long getDistance(long paramLong);
    
    public void init()
    {
      this.mStartTime = -1L;
    }
    
    public boolean isRunning()
    {
      boolean bool;
      if (this.mStartTime >= 0L) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    protected void onMove(float paramFloat1, float paramFloat2)
    {
      AdvancedSlider.this.moveStartPoint(paramFloat1, paramFloat2);
    }
    
    protected void onStart() {}
    
    protected void onStop()
    {
      this.mStartTime = -1L;
      AdvancedSlider.this.cancelMoving();
    }
    
    public void start(AdvancedSlider.EndPoint paramEndPoint)
    {
      this.mStartTime = 0L;
      this.mEndPoint = paramEndPoint;
      this.mStartX = (AdvancedSlider.this.mStartPoint.getOffsetX() + AdvancedSlider.this.mStartPoint.getAnchorX());
      float f = AdvancedSlider.this.mStartPoint.getOffsetY() + AdvancedSlider.this.mStartPoint.getAnchorY();
      this.mStartY = f;
      this.mBounceStartPointIndex = -1;
      this.mTotalDistance = 0.0D;
      Utils.Point localPoint1 = new Utils.Point(this.mStartX, f);
      int i;
      if ((paramEndPoint != null) && (paramEndPoint.mPath != null)) {
        i = 1;
      }
      while (i < paramEndPoint.mPath.size())
      {
        Object localObject1 = paramEndPoint.mPath;
        int j = i - 1;
        localObject1 = (AdvancedSlider.Position)((ArrayList)localObject1).get(j);
        Object localObject2 = (AdvancedSlider.Position)paramEndPoint.mPath.get(i);
        localObject1 = new Utils.Point(((AdvancedSlider.Position)localObject1).getX(), ((AdvancedSlider.Position)localObject1).getY());
        localObject2 = new Utils.Point(((AdvancedSlider.Position)localObject2).getX(), ((AdvancedSlider.Position)localObject2).getY());
        Utils.Point localPoint2 = Utils.pointProjectionOnSegment((Utils.Point)localObject1, (Utils.Point)localObject2, localPoint1, false);
        if (localPoint2 != null)
        {
          this.mBounceStartPointIndex = j;
          this.mTotalDistance += Utils.Dist((Utils.Point)localObject1, localPoint2, true);
        }
        else
        {
          this.mTotalDistance += Utils.Dist((Utils.Point)localObject1, (Utils.Point)localObject2, true);
          i++;
          continue;
          this.mTotalDistance = Utils.Dist(new Utils.Point(AdvancedSlider.this.mStartPoint.getAnchorX(), AdvancedSlider.this.mStartPoint.getAnchorY()), localPoint1, true);
        }
      }
      if (this.mTotalDistance < 3.0D)
      {
        onStop();
        return;
      }
      onStart();
      AdvancedSlider.this.requestUpdate();
    }
    
    public void stopRunning()
    {
      this.mStartTime = -1L;
    }
    
    public void tick(long paramLong)
    {
      long l = this.mStartTime;
      if (l < 0L) {
        return;
      }
      if (l == 0L)
      {
        this.mStartTime = paramLong;
        this.mPreDistance = 0L;
      }
      else
      {
        l = getDistance(paramLong - l);
        if (this.mStartTime < 0L) {
          return;
        }
        Object localObject = this.mEndPoint;
        float f1;
        float f2;
        int i;
        if ((localObject != null) && (((AdvancedSlider.EndPoint)localObject).mPath != null))
        {
          f1 = AdvancedSlider.this.mStartPoint.getOffsetX() + AdvancedSlider.this.mStartPoint.getAnchorX();
          f2 = AdvancedSlider.this.mStartPoint.getOffsetY() + AdvancedSlider.this.mStartPoint.getAnchorY();
          paramLong = l - this.mPreDistance;
          i = this.mBounceStartPointIndex;
        }
        while (i >= 0)
        {
          localObject = (AdvancedSlider.Position)this.mEndPoint.mPath.get(i);
          Utils.Point localPoint1 = getPoint(((AdvancedSlider.Position)localObject).getX(), ((AdvancedSlider.Position)localObject).getY(), f1, f2, paramLong);
          if (localPoint1 == null)
          {
            if (i == 0)
            {
              onStop();
            }
            else
            {
              localPoint1 = new Utils.Point(((AdvancedSlider.Position)localObject).getX(), ((AdvancedSlider.Position)localObject).getY());
              Utils.Point localPoint2 = new Utils.Point(f1, f2);
              paramLong = (paramLong - Utils.Dist(localPoint1, localPoint2, true));
              f1 = ((AdvancedSlider.Position)localObject).getX();
              f2 = ((AdvancedSlider.Position)localObject).getY();
              i--;
            }
          }
          else
          {
            this.mBounceStartPointIndex = i;
            onMove((float)localPoint1.x, (float)localPoint1.y);
            break;
            localObject = getPoint(AdvancedSlider.this.mStartPoint.getAnchorX(), AdvancedSlider.this.mStartPoint.getAnchorY(), this.mStartX, this.mStartY, l);
            if (localObject == null) {
              onStop();
            } else {
              onMove((float)((Utils.Point)localObject).x, (float)((Utils.Point)localObject).y);
            }
          }
        }
        this.mPreDistance = l;
      }
      AdvancedSlider.this.requestUpdate();
    }
  }
  
  private class SliderPoint
    extends ElementGroup
  {
    private ScreenElement mCurrentStateElements;
    protected boolean mIsAlignChildren;
    protected String mName;
    protected String mNormalSound;
    protected ElementGroup mNormalStateElements;
    @Deprecated
    private CommandTrigger mNormalStateTrigger;
    private IndexedVariable mPointStateVar;
    protected String mPressedSound;
    protected ElementGroup mPressedStateElements;
    @Deprecated
    private CommandTrigger mPressedStateTrigger;
    protected String mReachedSound;
    private ElementGroup mReachedStateElements;
    @Deprecated
    private CommandTrigger mReachedStateTrigger;
    private AdvancedSlider.State mState = AdvancedSlider.State.Invalid;
    
    public SliderPoint(Element paramElement, ScreenElementRoot paramScreenElementRoot, String paramString)
    {
      super(paramScreenElementRoot);
      load(paramElement, paramString);
    }
    
    private void load(Element paramElement, String paramString)
    {
      this.mName = getAttr(paramElement, "name");
      this.mNormalSound = getAttr(paramElement, "normalSound");
      this.mPressedSound = getAttr(paramElement, "pressedSound");
      this.mReachedSound = getAttr(paramElement, "reachedSound");
      this.mNormalStateTrigger = loadTrigger(paramElement, "NormalState");
      this.mPressedStateTrigger = loadTrigger(paramElement, "PressedState");
      this.mReachedStateTrigger = loadTrigger(paramElement, "ReachedState");
      if (!TextUtils.isEmpty(this.mName))
      {
        paramString = new StringBuilder();
        paramString.append(this.mName);
        paramString.append(".");
        paramString.append("state");
        this.mPointStateVar = new IndexedVariable(paramString.toString(), getVariables(), true);
      }
      this.mIsAlignChildren = Boolean.parseBoolean(getAttr(paramElement, "alignChildren"));
    }
    
    private CommandTrigger loadTrigger(Element paramElement, String paramString)
    {
      paramElement = Utils.getChild(paramElement, paramString);
      if (paramElement != null) {
        return CommandTrigger.fromParentElement(paramElement, this.mRoot);
      }
      return null;
    }
    
    protected void doRender(Canvas paramCanvas)
    {
      paramCanvas.save();
      if (!this.mIsAlignChildren) {
        paramCanvas.translate(-getLeft(), -getTop());
      }
      super.doRender(paramCanvas);
      paramCanvas.restore();
    }
    
    protected float getParentLeft()
    {
      boolean bool = this.mIsAlignChildren;
      float f1 = 0.0F;
      float f2;
      if (bool) {
        f2 = getLeft();
      } else {
        f2 = 0.0F;
      }
      ElementGroup localElementGroup = this.mParent;
      if (localElementGroup != null) {
        f1 = localElementGroup.getParentLeft();
      }
      return f2 + f1;
    }
    
    protected float getParentTop()
    {
      boolean bool = this.mIsAlignChildren;
      float f1 = 0.0F;
      float f2;
      if (bool) {
        f2 = getTop();
      } else {
        f2 = 0.0F;
      }
      ElementGroup localElementGroup = this.mParent;
      if (localElementGroup != null) {
        f1 = localElementGroup.getParentTop();
      }
      return f2 + f1;
    }
    
    public AdvancedSlider.State getState()
    {
      return this.mState;
    }
    
    public void init()
    {
      super.init();
      Object localObject = this.mNormalStateElements;
      if (localObject != null) {
        ((ScreenElement)localObject).show(true);
      }
      localObject = this.mPressedStateElements;
      if (localObject != null) {
        ((ScreenElement)localObject).show(false);
      }
      localObject = this.mReachedStateElements;
      if (localObject != null) {
        ((ScreenElement)localObject).show(false);
      }
      setState(AdvancedSlider.State.Normal);
      localObject = this.mNormalStateTrigger;
      if (localObject != null) {
        ((CommandTrigger)localObject).init();
      }
      localObject = this.mPressedStateTrigger;
      if (localObject != null) {
        ((CommandTrigger)localObject).init();
      }
      localObject = this.mReachedStateTrigger;
      if (localObject != null) {
        ((CommandTrigger)localObject).init();
      }
    }
    
    protected ScreenElement onCreateChild(Element paramElement)
    {
      String str = paramElement.getTagName();
      if (str.equalsIgnoreCase("NormalState"))
      {
        paramElement = new ElementGroup(paramElement, this.mRoot);
        this.mNormalStateElements = paramElement;
        return paramElement;
      }
      if (str.equalsIgnoreCase("PressedState"))
      {
        paramElement = new ElementGroup(paramElement, this.mRoot);
        this.mPressedStateElements = paramElement;
        return paramElement;
      }
      if (str.equalsIgnoreCase("ReachedState"))
      {
        paramElement = new ElementGroup(paramElement, this.mRoot);
        this.mReachedStateElements = paramElement;
        return paramElement;
      }
      return super.onCreateChild(paramElement);
    }
    
    protected void onStateChange(AdvancedSlider.State paramState1, AdvancedSlider.State paramState2)
    {
      int[] arrayOfInt = AdvancedSlider.1.$SwitchMap$com$miui$maml$elements$AdvancedSlider$State;
      int i = arrayOfInt[paramState2.ordinal()];
      if (i != 1)
      {
        if (i != 2)
        {
          if (i == 3)
          {
            paramState1 = this.mReachedStateTrigger;
            if (paramState1 != null) {
              paramState1.perform();
            }
            performAction("reached");
          }
        }
        else
        {
          paramState2 = this.mPressedStateTrigger;
          if (paramState2 != null) {
            paramState2.perform();
          }
          performAction("pressed");
          i = arrayOfInt[paramState1.ordinal()];
          if (i != 1)
          {
            if (i == 3) {
              performAction("pressed_reached");
            }
          }
          else {
            performAction("pressed_normal");
          }
        }
      }
      else
      {
        paramState1 = this.mNormalStateTrigger;
        if (paramState1 != null) {
          paramState1.perform();
        }
        performAction("normal");
      }
    }
    
    public void setState(AdvancedSlider.State paramState)
    {
      AdvancedSlider.State localState = this.mState;
      if (localState == paramState) {
        return;
      }
      this.mState = paramState;
      Object localObject = null;
      int i = AdvancedSlider.1.$SwitchMap$com$miui$maml$elements$AdvancedSlider$State[paramState.ordinal()];
      int j = 2;
      if (i != 1)
      {
        if (i != 2)
        {
          if (i != 3)
          {
            i = 0;
            j = i;
            paramState = (AdvancedSlider.State)localObject;
          }
          else
          {
            localObject = this.mReachedStateElements;
            if (localObject != null)
            {
              paramState = (AdvancedSlider.State)localObject;
            }
            else
            {
              paramState = this.mPressedStateElements;
              if (paramState == null) {
                paramState = this.mNormalStateElements;
              }
            }
            if (localObject != null) {
              i = 1;
            } else {
              i = 0;
            }
          }
        }
        else
        {
          localObject = this.mPressedStateElements;
          if (localObject != null) {
            paramState = (AdvancedSlider.State)localObject;
          } else {
            paramState = this.mNormalStateElements;
          }
          if ((localObject != null) && (!AdvancedSlider.this.mStartPointPressed)) {
            i = 1;
          } else {
            i = 0;
          }
          j = 1;
        }
      }
      else
      {
        paramState = this.mNormalStateElements;
        if (this.mPressedStateElements != null) {
          i = 1;
        } else {
          i = 0;
        }
        j = 0;
      }
      localObject = this.mCurrentStateElements;
      if (localObject != paramState)
      {
        if (localObject != null) {
          ((ScreenElement)localObject).show(false);
        }
        if (paramState != null) {
          paramState.show(true);
        }
        this.mCurrentStateElements = paramState;
      }
      if ((paramState != null) && (i != 0)) {
        paramState.reset();
      }
      paramState = this.mPointStateVar;
      if (paramState != null) {
        paramState.set(j);
      }
      onStateChange(localState, this.mState);
    }
  }
  
  private class SpeedAccController
    extends AdvancedSlider.ReboundAnimationController
  {
    private int mBounceAccelation;
    private Expression mBounceAccelationExp;
    private int mBounceInitSpeed;
    private Expression mBounceInitSpeedExp;
    private IndexedVariable mBounceProgress;
    
    public SpeedAccController(Element paramElement)
    {
      super(null);
      this.mBounceInitSpeedExp = Expression.build(AdvancedSlider.this.getVariables(), AdvancedSlider.this.getAttr(paramElement, "bounceInitSpeed"));
      this.mBounceAccelationExp = Expression.build(AdvancedSlider.this.getVariables(), AdvancedSlider.this.getAttr(paramElement, "bounceAcceleration"));
      if (AdvancedSlider.this.mHasName)
      {
        paramElement = new StringBuilder();
        paramElement.append(AdvancedSlider.this.mName);
        paramElement.append(".");
        paramElement.append("bounce_progress");
        this.mBounceProgress = new IndexedVariable(paramElement.toString(), AdvancedSlider.this.getVariables(), true);
      }
    }
    
    protected long getDistance(long paramLong)
    {
      int i = this.mBounceInitSpeed;
      long l1 = i * paramLong / 1000L;
      int j = this.mBounceAccelation;
      l1 += j * paramLong * paramLong / 2000000L;
      long l2 = i;
      paramLong = j * paramLong / 1000L;
      double d1 = 1.0D;
      IndexedVariable localIndexedVariable;
      if (l2 + paramLong <= 0L)
      {
        onStop();
        localIndexedVariable = this.mBounceProgress;
        if (localIndexedVariable != null) {
          localIndexedVariable.set(1.0D);
        }
      }
      double d2 = this.mTotalDistance;
      if (d2 > 0.0D)
      {
        d2 = l1 / d2;
        localIndexedVariable = this.mBounceProgress;
        if (localIndexedVariable != null)
        {
          if (d2 <= 1.0D) {
            d1 = d2;
          }
          localIndexedVariable.set(d1);
        }
      }
      return l1;
    }
    
    public void init()
    {
      super.init();
      IndexedVariable localIndexedVariable = this.mBounceProgress;
      if (localIndexedVariable != null) {
        localIndexedVariable.set(1.0D);
      }
    }
    
    protected void onStart()
    {
      Object localObject = this.mBounceInitSpeedExp;
      if (localObject != null) {
        this.mBounceInitSpeed = ((int)AdvancedSlider.this.evaluate((Expression)localObject));
      }
      localObject = this.mBounceAccelationExp;
      if (localObject != null) {
        this.mBounceAccelation = ((int)AdvancedSlider.this.evaluate((Expression)localObject));
      }
      localObject = this.mBounceProgress;
      if (localObject != null) {
        ((IndexedVariable)localObject).set(0.0D);
      }
    }
    
    public void start(AdvancedSlider.EndPoint paramEndPoint)
    {
      if (this.mBounceInitSpeedExp == null) {
        onStop();
      } else {
        super.start(paramEndPoint);
      }
    }
  }
  
  private class StartPoint
    extends AdvancedSlider.SliderPoint
  {
    public static final String TAG_NAME = "StartPoint";
    private float mAnchorX;
    private float mAnchorY;
    protected float mOffsetX;
    protected float mOffsetY;
    public AdvancedSlider.InterpolatorController mReboundController;
    
    public StartPoint(Element paramElement, ScreenElementRoot paramScreenElementRoot)
    {
      super(paramElement, paramScreenElementRoot, "StartPoint");
      this.mAnchorX = Utils.getAttrAsFloat(paramElement, "anchorX", 0.0F);
      this.mAnchorY = Utils.getAttrAsFloat(paramElement, "anchorY", 0.0F);
      paramScreenElementRoot = InterpolatorHelper.create(getVariables(), paramElement);
      paramElement = Expression.build(getVariables(), paramElement.getAttribute("easeTime"));
      if ((paramScreenElementRoot != null) && (paramElement != null)) {
        this.mReboundController = new AdvancedSlider.InterpolatorController(AdvancedSlider.this, paramScreenElementRoot, paramElement);
      }
    }
    
    public void doRender(Canvas paramCanvas)
    {
      int i = paramCanvas.save();
      paramCanvas.translate(this.mOffsetX, this.mOffsetY);
      super.doRender(paramCanvas);
      paramCanvas.restoreToCount(i);
    }
    
    protected void doTick(long paramLong)
    {
      super.doTick(paramLong);
      AdvancedSlider.InterpolatorController localInterpolatorController = this.mReboundController;
      if (localInterpolatorController != null) {
        localInterpolatorController.tick(paramLong);
      }
    }
    
    public float getAnchorX()
    {
      return getLeft() + this.mAnchorX;
    }
    
    public float getAnchorY()
    {
      return getTop() + this.mAnchorY;
    }
    
    public float getOffsetX()
    {
      return this.mOffsetX;
    }
    
    public float getOffsetY()
    {
      return this.mOffsetY;
    }
    
    public void init()
    {
      super.init();
      AdvancedSlider.InterpolatorController localInterpolatorController = this.mReboundController;
      if (localInterpolatorController != null) {
        localInterpolatorController.init();
      }
    }
    
    public void moveTo(float paramFloat1, float paramFloat2)
    {
      this.mOffsetX = paramFloat1;
      this.mOffsetY = paramFloat2;
    }
    
    protected void onStateChange(AdvancedSlider.State paramState1, AdvancedSlider.State paramState2)
    {
      if (paramState1 == AdvancedSlider.State.Invalid) {
        return;
      }
      int i = AdvancedSlider.1.$SwitchMap$com$miui$maml$elements$AdvancedSlider$State[paramState2.ordinal()];
      if (i != 1)
      {
        if ((i == 2) && (!this.mPressed)) {
          this.mRoot.playSound(this.mPressedSound);
        }
      }
      else {
        this.mRoot.playSound(this.mNormalSound);
      }
      super.onStateChange(paramState1, paramState2);
    }
  }
  
  private static enum State
  {
    static
    {
      State localState1 = new State("Normal", 0);
      Normal = localState1;
      State localState2 = new State("Pressed", 1);
      Pressed = localState2;
      State localState3 = new State("Reached", 2);
      Reached = localState3;
      State localState4 = new State("Invalid", 3);
      Invalid = localState4;
      $VALUES = new State[] { localState1, localState2, localState3, localState4 };
    }
    
    private State() {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.AdvancedSlider
 * JD-Core Version:    0.7.0.1
 */