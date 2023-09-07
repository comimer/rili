package com.miui.maml.data;

import com.miui.maml.util.Utils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class JsonFunctions
  extends Expression.FunctionImpl
{
  private static final String LOG_TAG = "Expression";
  private final Fun mFun;
  
  private JsonFunctions(Fun paramFun, int paramInt)
  {
    super(paramInt);
    this.mFun = paramFun;
  }
  
  public static void load()
  {
    Expression.FunctionExpression.registerFunction("jsonGetString", new JsonFunctions(Fun.JSON_GET_STRING, 2));
    Expression.FunctionExpression.registerFunction("jsonGetBoolean", new JsonFunctions(Fun.JSON_GET_BOOLEAN, 2));
    Expression.FunctionExpression.registerFunction("jsonGetInt", new JsonFunctions(Fun.JSON_GET_INT, 2));
    Expression.FunctionExpression.registerFunction("jsonGetObject", new JsonFunctions(Fun.JSON_GET_OBJECT, 2));
    Expression.FunctionExpression.registerFunction("jsonGetArray", new JsonFunctions(Fun.JSON_GET_ARRAY, 2));
    Expression.FunctionExpression.registerFunction("jsonArrayGetIndex", new JsonFunctions(Fun.JSON_ARRAY_GET_INDEX, 2));
    Expression.FunctionExpression.registerFunction("newJsonObject", new JsonFunctions(Fun.JSON_NEW_OBJECT, 0));
    Expression.FunctionExpression.registerFunction("newJsonArray", new JsonFunctions(Fun.JSON_NEW_JSON_ARRAY, 0));
    Expression.FunctionExpression.registerFunction("getJsonArrayLength", new JsonFunctions(Fun.JSON_ARRAY_LENGTH, 1));
    Expression.FunctionExpression.registerFunction("jsonObjectEquals", new JsonFunctions(Fun.JSON_OBJECT_EQUALS, 2));
    Expression.FunctionExpression.registerFunction("strToJson", new JsonFunctions(Fun.TO_JSON_OBJECT, 1));
    Expression.FunctionExpression.registerFunction("jsonToStr", new JsonFunctions(Fun.TO_STR_FROM_JSON, 1));
    Expression.FunctionExpression.registerFunction("isJsonObject", new JsonFunctions(Fun.IS_JSON_OBJECT, 1));
    Expression.FunctionExpression.registerFunction("isJsonArray", new JsonFunctions(Fun.IS_JSON_ARRAY, 1));
  }
  
  public double evaluate(Expression[] paramArrayOfExpression, Variables paramVariables)
  {
    int i = 1.$SwitchMap$com$miui$maml$data$JsonFunctions$Fun[this.mFun.ordinal()];
    double d = 1.0D;
    switch (i)
    {
    default: 
      break;
    case 6: 
      paramVariables = paramArrayOfExpression[0].evaluateJsonObject();
      if (paramVariables != null)
      {
        if (!Boolean.valueOf(paramVariables.optBoolean(paramArrayOfExpression[1].evaluateStr())).booleanValue()) {
          d = 0.0D;
        }
        return d;
      }
      break;
    case 5: 
      paramVariables = paramArrayOfExpression[0].evaluateJsonObject();
      if (paramVariables == null) {
        break;
      }
    case 4: 
    case 3: 
    case 2: 
    case 1: 
      for (i = paramVariables.optInt(paramArrayOfExpression[1].evaluateStr());; i = paramArrayOfExpression.length())
      {
        return i;
        if (paramArrayOfExpression[0].evaluateJsonArray() == null) {
          d = 0.0D;
        }
        return d;
        if (paramArrayOfExpression[0].evaluateJsonObject() == null) {
          d = 0.0D;
        }
        return d;
        paramVariables = paramArrayOfExpression[0].evaluateJsonObject();
        paramArrayOfExpression = paramArrayOfExpression[1].evaluateJsonObject();
        if ((paramVariables == null) || (paramArrayOfExpression == null)) {
          break;
        }
        if (paramVariables != paramArrayOfExpression) {
          d = 0.0D;
        }
        return d;
        paramArrayOfExpression = paramArrayOfExpression[0].evaluateJsonArray();
        if (paramArrayOfExpression == null) {
          break;
        }
      }
    }
    return 0.0D;
  }
  
  public JSONArray evaluateJsonArray(Expression[] paramArrayOfExpression, Variables paramVariables)
  {
    int i = 1.$SwitchMap$com$miui$maml$data$JsonFunctions$Fun[this.mFun.ordinal()];
    if (i != 13)
    {
      if (i == 14) {
        return new JSONArray();
      }
    }
    else
    {
      JSONObject localJSONObject = paramArrayOfExpression[0].evaluateJsonObject();
      if (localJSONObject != null) {
        return localJSONObject.optJSONArray(paramArrayOfExpression[1].evaluateStr());
      }
    }
    return super.evaluateJsonArray(paramArrayOfExpression, paramVariables);
  }
  
  public JSONObject evaluateJsonObject(Expression[] paramArrayOfExpression, Variables paramVariables)
  {
    int i;
    switch (1.$SwitchMap$com$miui$maml$data$JsonFunctions$Fun[this.mFun.ordinal()])
    {
    default: 
      break;
    case 12: 
      localObject = paramArrayOfExpression[0].evaluateJsonArray();
      i = (int)paramArrayOfExpression[1].evaluate();
      if ((localObject == null) || (i >= ((JSONArray)localObject).length())) {
        break;
      }
    }
    try
    {
      localObject = ((JSONArray)localObject).getJSONObject(i);
      return localObject;
    }
    catch (JSONException localJSONException)
    {
      break label138;
    }
    paramVariables = paramArrayOfExpression[0].evaluateStr();
    if (paramVariables != null) {}
    label138:
    try
    {
      paramArrayOfExpression = new org/json/JSONObject;
      paramArrayOfExpression.<init>(paramVariables);
    }
    catch (JSONException paramArrayOfExpression)
    {
      label104:
      break label104;
    }
    paramArrayOfExpression = null;
    return paramArrayOfExpression;
    return new JSONObject();
    Object localObject = paramArrayOfExpression[0].evaluateJsonObject();
    if (localObject != null) {
      return ((JSONObject)localObject).optJSONObject(paramArrayOfExpression[1].evaluateStr());
    }
    return super.evaluateJsonObject(paramArrayOfExpression, paramVariables);
  }
  
  public String evaluateStr(Expression[] paramArrayOfExpression, Variables paramVariables)
  {
    int i = 1.$SwitchMap$com$miui$maml$data$JsonFunctions$Fun[this.mFun.ordinal()];
    Object localObject = null;
    switch (i)
    {
    default: 
      break;
    case 8: 
      paramVariables = paramArrayOfExpression[0].evaluateJsonObject();
      paramArrayOfExpression = localObject;
      if (paramVariables != null) {
        paramArrayOfExpression = paramVariables.toString();
      }
      return paramArrayOfExpression;
    case 7: 
      paramVariables = paramArrayOfExpression[0].evaluateJsonObject();
      if (paramVariables != null) {
        return paramVariables.optString(paramArrayOfExpression[1].evaluateStr(), null);
      }
      break;
    case 1: 
    case 2: 
    case 3: 
    case 4: 
    case 5: 
    case 6: 
      return Utils.doubleToString(evaluate(paramArrayOfExpression, paramVariables));
    }
    return null;
  }
  
  public void reset() {}
  
  private static enum Fun
  {
    static
    {
      Fun localFun1 = new Fun("INVALID", 0);
      INVALID = localFun1;
      Fun localFun2 = new Fun("JSON_GET_STRING", 1);
      JSON_GET_STRING = localFun2;
      Fun localFun3 = new Fun("JSON_GET_BOOLEAN", 2);
      JSON_GET_BOOLEAN = localFun3;
      Fun localFun4 = new Fun("JSON_GET_INT", 3);
      JSON_GET_INT = localFun4;
      Fun localFun5 = new Fun("JSON_GET_OBJECT", 4);
      JSON_GET_OBJECT = localFun5;
      Fun localFun6 = new Fun("JSON_GET_ARRAY", 5);
      JSON_GET_ARRAY = localFun6;
      Fun localFun7 = new Fun("JSON_ARRAY_GET_INDEX", 6);
      JSON_ARRAY_GET_INDEX = localFun7;
      Fun localFun8 = new Fun("JSON_NEW_OBJECT", 7);
      JSON_NEW_OBJECT = localFun8;
      Fun localFun9 = new Fun("JSON_NEW_JSON_ARRAY", 8);
      JSON_NEW_JSON_ARRAY = localFun9;
      Fun localFun10 = new Fun("JSON_ARRAY_LENGTH", 9);
      JSON_ARRAY_LENGTH = localFun10;
      Fun localFun11 = new Fun("JSON_OBJECT_EQUALS", 10);
      JSON_OBJECT_EQUALS = localFun11;
      Fun localFun12 = new Fun("TO_JSON_OBJECT", 11);
      TO_JSON_OBJECT = localFun12;
      Fun localFun13 = new Fun("TO_STR_FROM_JSON", 12);
      TO_STR_FROM_JSON = localFun13;
      Fun localFun14 = new Fun("IS_JSON_OBJECT", 13);
      IS_JSON_OBJECT = localFun14;
      Fun localFun15 = new Fun("IS_JSON_ARRAY", 14);
      IS_JSON_ARRAY = localFun15;
      $VALUES = new Fun[] { localFun1, localFun2, localFun3, localFun4, localFun5, localFun6, localFun7, localFun8, localFun9, localFun10, localFun11, localFun12, localFun13, localFun14, localFun15 };
    }
    
    private Fun() {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.data.JsonFunctions
 * JD-Core Version:    0.7.0.1
 */