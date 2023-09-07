package com.miui.maml.elements;

import com.miui.maml.ScreenElementRoot;
import com.miui.maml.data.Expression;
import com.miui.maml.folme.ConfigValue;
import j9.c;
import j9.c.a;
import java.util.ArrayList;
import n.b;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class FolmeConfigElement
  extends ConfigElement
{
  public static final String TAG_NAME = "FolmeConfig";
  private ArrayList<ConfigData> mConfigs;
  
  public FolmeConfigElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    paramScreenElementRoot = new ArrayList();
    this.mConfigs = paramScreenElementRoot;
    paramScreenElementRoot.add(getConfigData(paramElement));
    paramElement = paramElement.getChildNodes();
    int i = paramElement.getLength();
    for (int j = 0; j < i; j++) {
      if (paramElement.item(j).getNodeType() == 1)
      {
        paramScreenElementRoot = (Element)paramElement.item(j);
        if ("Special".equals(paramScreenElementRoot.getTagName())) {
          this.mConfigs.add(getConfigData(paramScreenElementRoot));
        }
      }
    }
  }
  
  private ConfigData getConfigData(Element paramElement)
  {
    ConfigData localConfigData = new ConfigData(null);
    localConfigData.mEaseExp = Expression.buildMultiple(getVariables(), paramElement.getAttribute("ease"));
    localConfigData.mFromSpeedExp = Expression.build(getVariables(), paramElement.getAttribute("fromSpeed"));
    localConfigData.mDelayExp = Expression.build(getVariables(), paramElement.getAttribute("delay"));
    localConfigData.mOnBeginCallbackExp = Expression.buildMultiple(getVariables(), paramElement.getAttribute("onBegin"));
    localConfigData.mOnCompleteCallbackExp = Expression.buildMultiple(getVariables(), paramElement.getAttribute("onComplete"));
    localConfigData.mOnUpdateCallbackExp = Expression.buildMultiple(getVariables(), paramElement.getAttribute("onUpdate"));
    localConfigData.mPropertyExp = Expression.buildMultiple(getVariables(), paramElement.getAttribute("property"));
    return localConfigData;
  }
  
  private c.a getEaseFromExpressions(Expression[] paramArrayOfExpression)
  {
    if ((paramArrayOfExpression != null) && (paramArrayOfExpression.length > 0))
    {
      Object localObject = paramArrayOfExpression[0];
      if (localObject != null)
      {
        int i = (int)((Expression)localObject).evaluate();
        int j = paramArrayOfExpression.length;
        int k = 1;
        localObject = new float[j - 1];
        j = paramArrayOfExpression.length;
        while (k < j)
        {
          Expression localExpression = paramArrayOfExpression[k];
          if (localExpression != null) {
            localObject[(k - 1)] = ((float)localExpression.evaluate());
          } else {
            localObject[(k - 1)] = 0.0F;
          }
          k++;
        }
        try
        {
          paramArrayOfExpression = c.e(i, (float[])localObject);
          return paramArrayOfExpression;
        }
        catch (Exception paramArrayOfExpression)
        {
          paramArrayOfExpression.printStackTrace();
        }
      }
    }
    return null;
  }
  
  private void getStrFromExpToSet(Expression[] paramArrayOfExpression, b<String> paramb)
  {
    paramb.clear();
    if ((paramArrayOfExpression != null) && (paramArrayOfExpression.length > 0))
    {
      int i = paramArrayOfExpression.length;
      for (int j = 0; j < i; j++)
      {
        Expression localExpression = paramArrayOfExpression[j];
        if (localExpression != null) {
          paramb.add(localExpression.evaluateStr());
        }
      }
    }
  }
  
  protected void evaluateConfigValue()
  {
    this.mTempValueList.clear();
    int i = this.mConfigs.size();
    for (int j = 0; j < i; j++)
    {
      ConfigValue localConfigValue = new ConfigValue();
      ConfigData localConfigData = (ConfigData)this.mConfigs.get(j);
      Expression localExpression = localConfigData.mDelayExp;
      if (localExpression != null) {
        localConfigValue.mDelay = (localExpression.evaluate());
      }
      localExpression = localConfigData.mFromSpeedExp;
      if (localExpression != null)
      {
        localConfigValue.mFromSpeed = ((float)localExpression.evaluate());
        localConfigValue.mHasFromSpeed = true;
      }
      localConfigValue.mEase = getEaseFromExpressions(localConfigData.mEaseExp);
      getStrFromExpToSet(localConfigData.mPropertyExp, localConfigValue.mRelatedProperty);
      getStrFromExpToSet(localConfigData.mOnBeginCallbackExp, localConfigValue.mOnBeginCallback);
      getStrFromExpToSet(localConfigData.mOnCompleteCallbackExp, localConfigValue.mOnCompleteCallback);
      getStrFromExpToSet(localConfigData.mOnUpdateCallbackExp, localConfigValue.mOnUpdateCallback);
      this.mTempValueList.add(localConfigValue);
    }
  }
  
  private class ConfigData
  {
    public Expression mDelayExp;
    public Expression[] mEaseExp;
    public Expression mFromSpeedExp;
    public Expression[] mOnBeginCallbackExp;
    public Expression[] mOnCompleteCallbackExp;
    public Expression[] mOnUpdateCallbackExp;
    public Expression[] mPropertyExp;
    
    private ConfigData() {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.FolmeConfigElement
 * JD-Core Version:    0.7.0.1
 */