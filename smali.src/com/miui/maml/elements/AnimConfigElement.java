package com.miui.maml.elements;

import android.text.TextUtils;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.data.Expression;
import com.miui.maml.data.IndexedVariable;
import com.miui.maml.data.Variables;
import com.miui.maml.folme.ConfigValue;
import j9.c;
import j9.c.a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import n.b;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class AnimConfigElement
  extends ConfigElement
{
  public static final String TAG_NAME = "AnimConfig";
  private ConcurrentHashMap<String, ConfigData> mConfigs;
  
  public AnimConfigElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    paramScreenElementRoot = new ConcurrentHashMap();
    this.mConfigs = paramScreenElementRoot;
    if (this.mHasName)
    {
      String str = this.mName;
      paramScreenElementRoot.put(str, getConfigData(paramElement, str));
      paramScreenElementRoot = paramElement.getChildNodes();
      int i = paramScreenElementRoot.getLength();
      for (int j = 0; j < i; j++) {
        if (paramScreenElementRoot.item(j).getNodeType() == 1)
        {
          paramElement = (Element)paramScreenElementRoot.item(j);
          if ("Special".equals(paramElement.getTagName()))
          {
            str = paramElement.getAttribute("name");
            if (!TextUtils.isEmpty(str))
            {
              StringBuilder localStringBuilder = new StringBuilder();
              localStringBuilder.append(this.mName);
              localStringBuilder.append(".");
              localStringBuilder.append(str);
              str = localStringBuilder.toString();
              this.mConfigs.put(str, getConfigData(paramElement, str));
            }
          }
        }
      }
    }
  }
  
  private ConfigData getConfigData(Element paramElement, String paramString)
  {
    Variables localVariables = getVariables();
    ConfigData localConfigData = new ConfigData(null);
    NamedNodeMap localNamedNodeMap = paramElement.getAttributes();
    int i = localNamedNodeMap.getLength();
    for (int j = 0; j < i; j++)
    {
      String str = localNamedNodeMap.item(j).getNodeName();
      Expression[] arrayOfExpression = Expression.buildMultiple(localVariables, paramElement.getAttribute(str));
      if (arrayOfExpression != null) {
        updateConfigIndexVariable(localConfigData, paramString, str, arrayOfExpression);
      }
    }
    return localConfigData;
  }
  
  private void getConfigValueFromVarToSet(IndexedVariable paramIndexedVariable, b<String> paramb)
  {
    if (paramIndexedVariable != null) {
      paramIndexedVariable = paramIndexedVariable.get();
    } else {
      paramIndexedVariable = null;
    }
    if ((paramIndexedVariable != null) && ((paramIndexedVariable instanceof String[])))
    {
      paramIndexedVariable = (String[])paramIndexedVariable;
      int i = paramIndexedVariable.length;
      for (int j = 0; j < i; j++) {
        paramb.add(paramIndexedVariable[j]);
      }
    }
  }
  
  private c.a getEase(IndexedVariable paramIndexedVariable)
  {
    if (paramIndexedVariable != null) {
      paramIndexedVariable = paramIndexedVariable.get();
    } else {
      paramIndexedVariable = null;
    }
    if ((paramIndexedVariable != null) && ((paramIndexedVariable instanceof double[])))
    {
      double[] arrayOfDouble = (double[])paramIndexedVariable;
      if (arrayOfDouble.length > 0)
      {
        int i = (int)arrayOfDouble[0];
        int j = arrayOfDouble.length;
        int k = 1;
        paramIndexedVariable = new float[j - 1];
        j = arrayOfDouble.length;
        while (k < j)
        {
          paramIndexedVariable[(k - 1)] = ((float)arrayOfDouble[k]);
          k++;
        }
        try
        {
          paramIndexedVariable = c.e(i, paramIndexedVariable);
          return paramIndexedVariable;
        }
        catch (Exception paramIndexedVariable)
        {
          paramIndexedVariable.printStackTrace();
        }
      }
    }
    return null;
  }
  
  private void removeConfigIndexVariable(ConfigData paramConfigData, String paramString)
  {
    paramString.hashCode();
    int i = paramString.hashCode();
    int j = -1;
    switch (i)
    {
    default: 
      break;
    case 1559564168: 
      if (paramString.equals("onUpdate")) {
        j = 6;
      }
      break;
    case 95467907: 
      if (paramString.equals("delay")) {
        j = 5;
      }
      break;
    case 69481149: 
      if (paramString.equals("fromSpeed")) {
        j = 4;
      }
      break;
    case 3105774: 
      if (paramString.equals("ease")) {
        j = 3;
      }
      break;
    case -993141291: 
      if (paramString.equals("property")) {
        j = 2;
      }
      break;
    case -1353036278: 
      if (paramString.equals("onBegin")) {
        j = 1;
      }
      break;
    case -2124458952: 
      if (paramString.equals("onComplete")) {
        j = 0;
      }
      break;
    }
    switch (j)
    {
    default: 
      break;
    case 6: 
      paramString = paramConfigData.mOnUpdateCallback;
      if (paramString != null)
      {
        paramString.set(null);
        paramConfigData.mOnUpdateCallback = null;
      }
      paramString = paramConfigData.mOnUpdateCallbackLen;
      if (paramString != null)
      {
        paramString.set(0.0D);
        paramConfigData.mOnUpdateCallbackLen = null;
      }
      break;
    case 5: 
      paramString = paramConfigData.mDelay;
      if (paramString != null)
      {
        paramString.set(0.0D);
        paramConfigData.mDelay = null;
      }
      break;
    case 4: 
      paramString = paramConfigData.mFromSpeed;
      if (paramString != null)
      {
        paramString.set(0.0D);
        paramConfigData.mFromSpeed = null;
      }
      break;
    case 3: 
      paramString = paramConfigData.mEase;
      if (paramString != null)
      {
        paramString.set(null);
        paramConfigData.mEase = null;
      }
      paramString = paramConfigData.mEaseLen;
      if (paramString != null)
      {
        paramString.set(0.0D);
        paramConfigData.mEaseLen = null;
      }
      break;
    case 2: 
      paramString = paramConfigData.mProperty;
      if (paramString != null)
      {
        paramString.set(null);
        paramConfigData.mProperty = null;
      }
      paramString = paramConfigData.mPropertyLen;
      if (paramString != null)
      {
        paramString.set(0.0D);
        paramConfigData.mPropertyLen = null;
      }
      break;
    case 1: 
      paramString = paramConfigData.mOnBeginCallback;
      if (paramString != null)
      {
        paramString.set(null);
        paramConfigData.mOnBeginCallback = null;
      }
      paramString = paramConfigData.mOnBeginCallbackLen;
      if (paramString != null)
      {
        paramString.set(0.0D);
        paramConfigData.mOnBeginCallbackLen = null;
      }
      break;
    case 0: 
      paramString = paramConfigData.mOnCompleteCallback;
      if (paramString != null)
      {
        paramString.set(null);
        paramConfigData.mOnCompleteCallback = null;
      }
      paramString = paramConfigData.mOnCompleteCallbackLen;
      if (paramString != null)
      {
        paramString.set(0.0D);
        paramConfigData.mOnCompleteCallbackLen = null;
      }
      break;
    }
  }
  
  private void updateConfigIndexVariable(ConfigData paramConfigData, String paramString1, String paramString2, Expression[] paramArrayOfExpression)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append(paramString1);
    ((StringBuilder)localObject).append(".");
    ((StringBuilder)localObject).append(paramString2);
    localObject = ((StringBuilder)localObject).toString();
    paramString1 = getVariables();
    paramString2.hashCode();
    int i = paramString2.hashCode();
    int j = 0;
    int k = 0;
    int m = 1;
    int n = -1;
    switch (i)
    {
    default: 
      break;
    case 1559564168: 
      if (paramString2.equals("onUpdate")) {
        n = 6;
      }
      break;
    case 95467907: 
      if (paramString2.equals("delay")) {
        n = 5;
      }
      break;
    case 69481149: 
      if (paramString2.equals("fromSpeed")) {
        n = 4;
      }
      break;
    case 3105774: 
      if (paramString2.equals("ease")) {
        n = 3;
      }
      break;
    case -993141291: 
      if (paramString2.equals("property")) {
        n = 2;
      }
      break;
    case -1353036278: 
      if (paramString2.equals("onBegin")) {
        n = 1;
      }
      break;
    case -2124458952: 
      if (paramString2.equals("onComplete")) {
        n = 0;
      }
      break;
    }
    paramString2 = null;
    switch (n)
    {
    default: 
      return;
    case 6: 
      if (paramConfigData.mOnUpdateCallback == null) {
        paramConfigData.mOnUpdateCallback = new IndexedVariable((String)localObject, paramString1, false);
      }
      if (paramConfigData.mOnUpdateCallbackLen == null)
      {
        paramString2 = new StringBuilder();
        paramString2.append((String)localObject);
        paramString2.append(".length");
        paramConfigData.mOnUpdateCallbackLen = new IndexedVariable(paramString2.toString(), paramString1, true);
      }
      paramString1 = paramConfigData.mOnUpdateCallback;
      paramConfigData = paramConfigData.mOnUpdateCallbackLen;
      break;
    case 5: 
      if (paramConfigData.mDelay == null) {
        paramConfigData.mDelay = new IndexedVariable((String)localObject, paramString1, true);
      }
      paramString1 = paramConfigData.mDelay;
      break;
    case 4: 
      if (paramConfigData.mFromSpeed == null) {
        paramConfigData.mFromSpeed = new IndexedVariable((String)localObject, paramString1, true);
      }
      paramString1 = paramConfigData.mFromSpeed;
      i = 0;
      paramConfigData = paramString2;
      n = m;
      m = i;
      break;
    case 3: 
      if (paramConfigData.mEase == null) {
        paramConfigData.mEase = new IndexedVariable((String)localObject, paramString1, false);
      }
      if (paramConfigData.mEaseLen == null)
      {
        paramString2 = new StringBuilder();
        paramString2.append((String)localObject);
        paramString2.append(".length");
        paramConfigData.mEaseLen = new IndexedVariable(paramString2.toString(), paramString1, true);
      }
      paramString1 = paramConfigData.mEase;
      paramConfigData = paramConfigData.mEaseLen;
      m = 1;
      n = 0;
      break;
    case 2: 
      if (paramConfigData.mProperty == null) {
        paramConfigData.mProperty = new IndexedVariable((String)localObject, paramString1, false);
      }
      if (paramConfigData.mPropertyLen == null)
      {
        paramString2 = new StringBuilder();
        paramString2.append((String)localObject);
        paramString2.append(".length");
        paramConfigData.mPropertyLen = new IndexedVariable(paramString2.toString(), paramString1, true);
      }
      paramString1 = paramConfigData.mProperty;
      paramConfigData = paramConfigData.mPropertyLen;
    }
    for (;;)
    {
      m = 0;
      n = m;
      break;
      if (paramConfigData.mOnBeginCallback == null) {
        paramConfigData.mOnBeginCallback = new IndexedVariable((String)localObject, paramString1, false);
      }
      if (paramConfigData.mOnBeginCallbackLen == null)
      {
        paramString2 = new StringBuilder();
        paramString2.append((String)localObject);
        paramString2.append(".length");
        paramConfigData.mOnBeginCallbackLen = new IndexedVariable(paramString2.toString(), paramString1, true);
      }
      paramString1 = paramConfigData.mOnBeginCallback;
      paramConfigData = paramConfigData.mOnBeginCallbackLen;
      continue;
      if (paramConfigData.mOnCompleteCallback == null) {
        paramConfigData.mOnCompleteCallback = new IndexedVariable((String)localObject, paramString1, false);
      }
      if (paramConfigData.mOnCompleteCallbackLen == null)
      {
        paramString2 = new StringBuilder();
        paramString2.append((String)localObject);
        paramString2.append(".length");
        paramConfigData.mOnCompleteCallbackLen = new IndexedVariable(paramString2.toString(), paramString1, true);
      }
      paramString1 = paramConfigData.mOnCompleteCallback;
      paramConfigData = paramConfigData.mOnCompleteCallbackLen;
    }
    i = paramArrayOfExpression.length;
    if (i > 0)
    {
      if (n != 0)
      {
        paramString2 = Double.valueOf(paramArrayOfExpression[0].evaluate());
      }
      else
      {
        if (m != 0)
        {
          localObject = new double[i];
          for (n = k;; n++)
          {
            paramString2 = (String)localObject;
            if (n >= i) {
              break;
            }
            paramString2 = paramArrayOfExpression[n];
            if (paramString2 != null) {
              localObject[n] = paramString2.evaluate();
            }
          }
        }
        localObject = new String[i];
        for (n = j;; n++)
        {
          paramString2 = (String)localObject;
          if (n >= i) {
            break;
          }
          paramString2 = paramArrayOfExpression[n];
          if (paramString2 != null) {
            localObject[n] = paramString2.evaluateStr();
          }
        }
      }
      paramString1.set(paramString2);
      if (paramConfigData != null) {
        paramConfigData.set(i);
      }
    }
  }
  
  public void clearConfigData()
  {
    Iterator localIterator = this.mConfigs.values().iterator();
    while (localIterator.hasNext())
    {
      ConfigData localConfigData = (ConfigData)localIterator.next();
      removeConfigIndexVariable(localConfigData, "fromSpeed");
      removeConfigIndexVariable(localConfigData, "delay");
      removeConfigIndexVariable(localConfigData, "ease");
      removeConfigIndexVariable(localConfigData, "property");
      removeConfigIndexVariable(localConfigData, "onUpdate");
      removeConfigIndexVariable(localConfigData, "onBegin");
      removeConfigIndexVariable(localConfigData, "onComplete");
    }
    this.mConfigs.clear();
  }
  
  protected void evaluateConfigValue()
  {
    this.mTempValueList.clear();
    Iterator localIterator = this.mConfigs.values().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (ConfigData)localIterator.next();
      ConfigValue localConfigValue = new ConfigValue();
      IndexedVariable localIndexedVariable = ((ConfigData)localObject).mDelay;
      if (localIndexedVariable != null) {
        localConfigValue.mDelay = (localIndexedVariable.getDouble());
      }
      localIndexedVariable = ((ConfigData)localObject).mFromSpeed;
      if (localIndexedVariable != null)
      {
        localConfigValue.mFromSpeed = ((float)localIndexedVariable.getDouble());
        localConfigValue.mHasFromSpeed = true;
      }
      localIndexedVariable = ((ConfigData)localObject).mEase;
      if (localIndexedVariable != null) {
        localConfigValue.mEase = getEase(localIndexedVariable);
      }
      localIndexedVariable = ((ConfigData)localObject).mProperty;
      if (localIndexedVariable != null) {
        getConfigValueFromVarToSet(localIndexedVariable, localConfigValue.mRelatedProperty);
      }
      localIndexedVariable = ((ConfigData)localObject).mOnBeginCallback;
      if (localIndexedVariable != null) {
        getConfigValueFromVarToSet(localIndexedVariable, localConfigValue.mOnBeginCallback);
      }
      localIndexedVariable = ((ConfigData)localObject).mOnCompleteCallback;
      if (localIndexedVariable != null) {
        getConfigValueFromVarToSet(localIndexedVariable, localConfigValue.mOnCompleteCallback);
      }
      localObject = ((ConfigData)localObject).mOnUpdateCallback;
      if (localObject != null) {
        getConfigValueFromVarToSet((IndexedVariable)localObject, localConfigValue.mOnUpdateCallback);
      }
      this.mTempValueList.add(localConfigValue);
    }
  }
  
  public void removeConfigData(String paramString1, String paramString2)
  {
    paramString1 = (ConfigData)this.mConfigs.get(paramString1);
    if (paramString1 != null) {
      removeConfigIndexVariable(paramString1, paramString2);
    }
  }
  
  public void updateConfigData(String paramString1, String paramString2, Expression[] paramArrayOfExpression)
  {
    ConfigData localConfigData1 = (ConfigData)this.mConfigs.get(paramString1);
    ConfigData localConfigData2 = localConfigData1;
    if (localConfigData1 == null)
    {
      localConfigData2 = new ConfigData(null);
      this.mConfigs.put(paramString1, localConfigData2);
    }
    updateConfigIndexVariable(localConfigData2, paramString1, paramString2, paramArrayOfExpression);
  }
  
  private class ConfigData
  {
    public IndexedVariable mDelay;
    public IndexedVariable mEase;
    public IndexedVariable mEaseLen;
    public IndexedVariable mFromSpeed;
    public IndexedVariable mOnBeginCallback;
    public IndexedVariable mOnBeginCallbackLen;
    public IndexedVariable mOnCompleteCallback;
    public IndexedVariable mOnCompleteCallbackLen;
    public IndexedVariable mOnUpdateCallback;
    public IndexedVariable mOnUpdateCallbackLen;
    public IndexedVariable mProperty;
    public IndexedVariable mPropertyLen;
    
    private ConfigData() {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.AnimConfigElement
 * JD-Core Version:    0.7.0.1
 */