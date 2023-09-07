package com.miui.maml.elements;

import android.graphics.Canvas;
import android.util.Log;
import com.miui.maml.CommandTrigger;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.animation.BaseAnimation;
import com.miui.maml.animation.VariableAnimation;
import com.miui.maml.data.Expression;
import com.miui.maml.data.IndexedVariable;
import com.miui.maml.data.VariableType;
import com.miui.maml.data.Variables;
import com.miui.maml.util.Utils;
import org.w3c.dom.Element;

public class VariableElement
  extends ScreenElement
{
  public static final String LENGTH_SUFFIX = ".length";
  private static final String LOG_TAG = "VariableElement";
  private static final String OLD_VALUE = "old_value";
  public static final String TAG_NAME = "Var";
  private VariableAnimation mAnimation;
  private int mArraySize;
  private Expression[] mArrayValues;
  private boolean mConst;
  private Expression mExpression;
  private Expression mIndexExpression;
  private boolean mInited;
  private IndexedVariable mLengthVar;
  private double mOldValue;
  private IndexedVariable mOldVar;
  private double mThreshold;
  private CommandTrigger mTrigger;
  private VariableType mType;
  private IndexedVariable mVar;
  
  public VariableElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    if (paramElement != null)
    {
      this.mExpression = Expression.build(getVariables(), paramElement.getAttribute("expression"));
      this.mIndexExpression = Expression.build(getVariables(), paramElement.getAttribute("index"));
      this.mThreshold = Math.abs(Utils.getAttrAsFloat(paramElement, "threshold", 1.0F));
      this.mType = VariableType.parseType(paramElement.getAttribute("type"));
      this.mConst = Boolean.parseBoolean(paramElement.getAttribute("const"));
      this.mArraySize = Utils.getAttrAsInt(paramElement, "size", 0);
      Variables localVariables = getVariables();
      this.mVar = new IndexedVariable(this.mName, localVariables, this.mType.isNumber());
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(this.mName);
      localStringBuilder.append(".");
      localStringBuilder.append("old_value");
      this.mOldVar = new IndexedVariable(localStringBuilder.toString(), localVariables, this.mType.isNumber());
      this.mTrigger = CommandTrigger.fromParentElement(paramElement, paramScreenElementRoot);
      if (this.mType.isArray())
      {
        paramElement = Expression.buildMultiple(localVariables, paramElement.getAttribute("values"));
        this.mArrayValues = paramElement;
        if (paramElement != null) {
          this.mArraySize = paramElement.length;
        }
        int i = this.mArraySize;
        if (i > 0)
        {
          if (!localVariables.createArray(this.mName, i, this.mType.mTypeClass))
          {
            paramElement = new StringBuilder();
            paramElement.append("fail to create array:");
            paramElement.append(this.mName);
            Log.e("VariableElement", paramElement.toString());
            this.mArraySize = 0;
          }
        }
        else
        {
          paramElement = new StringBuilder();
          paramElement.append("array size is 0:");
          paramElement.append(this.mName);
          Log.e("VariableElement", paramElement.toString());
        }
        paramElement = new StringBuilder();
        paramElement.append(this.mName);
        paramElement.append(".length");
        paramElement = new IndexedVariable(paramElement.toString(), localVariables, true);
        this.mLengthVar = paramElement;
        paramElement.set(this.mArraySize);
      }
    }
  }
  
  private double getDouble(boolean paramBoolean, int paramInt)
  {
    Object localObject = this.mAnimation;
    if (localObject != null) {
      return ((VariableAnimation)localObject).getValue();
    }
    localObject = this.mExpression;
    if (localObject != null) {
      return ((Expression)localObject).evaluate();
    }
    double d;
    if (paramBoolean) {
      d = this.mVar.getArrDouble(paramInt);
    } else {
      d = this.mVar.getDouble();
    }
    return d;
  }
  
  private void onValueChange(double paramDouble)
  {
    if (!this.mInited) {
      this.mOldValue = paramDouble;
    }
    if ((this.mTrigger != null) && (Math.abs(paramDouble - this.mOldValue) >= this.mThreshold))
    {
      this.mOldVar.set(this.mOldValue);
      this.mOldValue = paramDouble;
      this.mTrigger.perform();
    }
  }
  
  private void update()
  {
    int i = 1.$SwitchMap$com$miui$maml$data$VariableType[this.mType.ordinal()];
    Object localObject1;
    Object localObject2;
    if (i != 1)
    {
      int j = 0;
      int k = 0;
      if (i != 2)
      {
        double d;
        if (i != 3)
        {
          if (this.mType.isNumberArray())
          {
            localObject1 = this.mIndexExpression;
            if (localObject1 != null)
            {
              k = (int)((Expression)localObject1).evaluate();
              d = getDouble(true, k);
              this.mVar.setArr(k, d);
              onValueChange(d);
            }
            else
            {
              localObject1 = this.mArrayValues;
              if (localObject1 != null)
              {
                j = localObject1.length;
                localObject1 = this.mVar.get();
                while (k < j)
                {
                  localObject2 = this.mArrayValues[k];
                  if (localObject2 == null) {
                    d = 0.0D;
                  } else {
                    d = ((Expression)localObject2).evaluate();
                  }
                  Variables.putValueToArr(localObject1, k, d);
                  k++;
                }
                this.mVar.set(localObject1);
              }
            }
          }
        }
        else
        {
          d = getDouble(false, 0);
          this.mVar.set(d);
          onValueChange(d);
        }
      }
      else
      {
        if (this.mIndexExpression != null)
        {
          localObject1 = this.mExpression;
          if (localObject1 != null)
          {
            localObject2 = ((Expression)localObject1).evaluateStr();
            k = (int)this.mIndexExpression.evaluate();
            localObject1 = this.mVar.getArrString(k);
            if (Utils.equals(localObject2, localObject1)) {
              return;
            }
            this.mOldVar.set(localObject1);
            this.mVar.setArr(k, localObject2);
            localObject1 = this.mTrigger;
            if (localObject1 == null) {
              return;
            }
            ((CommandTrigger)localObject1).perform();
            return;
          }
        }
        if (this.mArrayValues != null)
        {
          localObject1 = this.mVar.get();
          if ((localObject1 instanceof String[]))
          {
            localObject2 = (String[])localObject1;
            i = Math.min(this.mArrayValues.length, localObject2.length);
            for (k = j; k < i; k++)
            {
              localObject1 = this.mArrayValues[k];
              if (localObject1 == null) {
                localObject1 = null;
              } else {
                localObject1 = ((Expression)localObject1).evaluateStr();
              }
              localObject2[k] = localObject1;
            }
            this.mVar.set(localObject2);
          }
        }
      }
    }
    else
    {
      localObject1 = this.mExpression;
      if (localObject1 != null)
      {
        localObject2 = ((Expression)localObject1).evaluateStr();
        localObject1 = this.mVar.getString();
        if (!Utils.equals(localObject2, localObject1))
        {
          this.mOldVar.set(localObject1);
          this.mVar.set(localObject2);
          localObject1 = this.mTrigger;
          if (localObject1 != null) {
            ((CommandTrigger)localObject1).perform();
          }
        }
      }
    }
  }
  
  protected void doRender(Canvas paramCanvas) {}
  
  protected void doTick(long paramLong)
  {
    if (this.mConst) {
      return;
    }
    super.doTick(paramLong);
    update();
  }
  
  public void finish()
  {
    super.finish();
    CommandTrigger localCommandTrigger = this.mTrigger;
    if (localCommandTrigger != null) {
      localCommandTrigger.finish();
    }
    this.mInited = false;
  }
  
  public void init()
  {
    super.init();
    CommandTrigger localCommandTrigger = this.mTrigger;
    if (localCommandTrigger != null) {
      localCommandTrigger.init();
    }
    update();
    this.mInited = true;
  }
  
  protected BaseAnimation onCreateAnimation(String paramString, Element paramElement)
  {
    if ("VariableAnimation".equals(paramString))
    {
      paramString = new VariableAnimation(paramElement, this);
      this.mAnimation = paramString;
      return paramString;
    }
    return super.onCreateAnimation(paramString, paramElement);
  }
  
  protected void onSetAnimBefore()
  {
    this.mAnimation = null;
  }
  
  protected void onSetAnimEnable(BaseAnimation paramBaseAnimation)
  {
    if ((paramBaseAnimation instanceof VariableAnimation)) {
      this.mAnimation = ((VariableAnimation)paramBaseAnimation);
    }
  }
  
  public void pause()
  {
    super.pause();
    CommandTrigger localCommandTrigger = this.mTrigger;
    if (localCommandTrigger != null) {
      localCommandTrigger.pause();
    }
  }
  
  protected void pauseAnim(long paramLong)
  {
    super.pauseAnim(paramLong);
    update();
  }
  
  protected void playAnim(long paramLong1, long paramLong2, long paramLong3, boolean paramBoolean1, boolean paramBoolean2)
  {
    super.playAnim(paramLong1, paramLong2, paramLong3, paramBoolean1, paramBoolean2);
    update();
  }
  
  public void reset(long paramLong)
  {
    super.reset(paramLong);
    update();
  }
  
  public void resume()
  {
    super.resume();
    CommandTrigger localCommandTrigger = this.mTrigger;
    if (localCommandTrigger != null) {
      localCommandTrigger.resume();
    }
  }
  
  protected void resumeAnim(long paramLong)
  {
    super.resumeAnim(paramLong);
    update();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.VariableElement
 * JD-Core Version:    0.7.0.1
 */