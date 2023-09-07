package com.miui.maml.data;

import android.util.Log;
import com.miui.maml.util.Utils;
import java.util.regex.PatternSyntaxException;

public class StringFunctions
  extends Expression.FunctionImpl
{
  private static final String LOG_TAG = "Expression";
  private final Fun mFun;
  
  private StringFunctions(Fun paramFun, int paramInt)
  {
    super(paramInt);
    this.mFun = paramFun;
  }
  
  public static void load()
  {
    Expression.FunctionExpression.registerFunction("strToLowerCase", new StringFunctions(Fun.STR_TOLOWER, 1));
    Expression.FunctionExpression.registerFunction("strToUpperCase", new StringFunctions(Fun.STR_TOUPPER, 1));
    Expression.FunctionExpression.registerFunction("strTrim", new StringFunctions(Fun.STR_TRIM, 1));
    Expression.FunctionExpression.registerFunction("strReplace", new StringFunctions(Fun.STR_REPLACE, 3));
    Expression.FunctionExpression.registerFunction("strReplaceAll", new StringFunctions(Fun.STR_REPLACEALL, 3));
    Expression.FunctionExpression.registerFunction("strReplaceFirst", new StringFunctions(Fun.STR_REPLACEFIRST, 3));
    Expression.FunctionExpression.registerFunction("strContains", new StringFunctions(Fun.STR_CONTAINS, 2));
    Expression.FunctionExpression.registerFunction("strStartsWith", new StringFunctions(Fun.STR_STARTWITH, 2));
    Expression.FunctionExpression.registerFunction("strEndsWith", new StringFunctions(Fun.STR_ENDSWITH, 2));
    Expression.FunctionExpression.registerFunction("strIsEmpty", new StringFunctions(Fun.STR_ISEMPTY, 1));
    Expression.FunctionExpression.registerFunction("strMatches", new StringFunctions(Fun.STR_MATCHES, 2));
    Expression.FunctionExpression.registerFunction("strIndexOf", new StringFunctions(Fun.STR_INDEXOF, 2));
    Expression.FunctionExpression.registerFunction("strLastIndexOf", new StringFunctions(Fun.STR_LASTINDEXOF, 2));
  }
  
  public double evaluate(Expression[] paramArrayOfExpression, Variables paramVariables)
  {
    int[] arrayOfInt = 1.$SwitchMap$com$miui$maml$data$StringFunctions$Fun;
    int i = arrayOfInt[this.mFun.ordinal()];
    double d1 = 0.0D;
    double d2;
    switch (i)
    {
    default: 
      paramVariables = paramArrayOfExpression[0].evaluateStr();
      if (arrayOfInt[this.mFun.ordinal()] != 7)
      {
        paramArrayOfExpression = paramArrayOfExpression[1].evaluateStr();
        i = arrayOfInt[this.mFun.ordinal()];
        d2 = -1.0D;
        switch (i)
        {
        default: 
          paramArrayOfExpression = new StringBuilder();
          paramArrayOfExpression.append("fail to evalute FunctionExpression, invalid function: ");
          paramArrayOfExpression.append(this.mFun.toString());
          Log.e("Expression", paramArrayOfExpression.toString());
          return 0.0D;
        }
      }
      break;
    case 8: 
    case 9: 
    case 10: 
    case 11: 
    case 12: 
    case 13: 
      return Utils.stringToDouble(evaluateStr(paramArrayOfExpression, paramVariables), 0.0D);
      d1 = d2;
      if (paramVariables != null)
      {
        d1 = d2;
        if (paramArrayOfExpression != null) {
          d1 = paramVariables.lastIndexOf(paramArrayOfExpression);
        }
      }
      return d1;
      d1 = d2;
      if (paramVariables != null)
      {
        d1 = d2;
        if (paramArrayOfExpression != null) {
          d1 = paramVariables.indexOf(paramArrayOfExpression);
        }
      }
      return d1;
      d2 = d1;
      if (paramVariables != null)
      {
        d2 = d1;
        if (paramArrayOfExpression != null) {
          try
          {
            boolean bool = paramVariables.matches(paramArrayOfExpression);
            d2 = d1;
            if (bool) {
              d2 = 1.0D;
            }
          }
          catch (PatternSyntaxException paramVariables)
          {
            paramVariables = new StringBuilder();
            paramVariables.append("invaid pattern of matches: ");
            paramVariables.append(paramArrayOfExpression);
            Log.w("Expression", paramVariables.toString());
            d2 = d1;
          }
        }
      }
      return d2;
      d2 = d1;
      if (paramVariables != null)
      {
        d2 = d1;
        if (paramArrayOfExpression != null)
        {
          d2 = d1;
          if (paramVariables.endsWith(paramArrayOfExpression)) {
            d2 = 1.0D;
          }
        }
      }
      return d2;
      d2 = d1;
      if (paramVariables != null)
      {
        d2 = d1;
        if (paramArrayOfExpression != null)
        {
          d2 = d1;
          if (paramVariables.startsWith(paramArrayOfExpression)) {
            d2 = 1.0D;
          }
        }
      }
      return d2;
      d2 = d1;
      if (paramVariables != null)
      {
        d2 = d1;
        if (paramArrayOfExpression != null)
        {
          d2 = d1;
          if (paramVariables.contains(paramArrayOfExpression)) {
            d2 = 1.0D;
          }
        }
      }
      return d2;
    }
    if ((paramVariables == null) || (paramVariables.isEmpty())) {
      d1 = 1.0D;
    }
    return d1;
  }
  
  public String evaluateStr(Expression[] paramArrayOfExpression, Variables paramVariables)
  {
    int[] arrayOfInt = 1.$SwitchMap$com$miui$maml$data$StringFunctions$Fun;
    switch (arrayOfInt[this.mFun.ordinal()])
    {
    default: 
      paramVariables = paramArrayOfExpression[0].evaluateStr();
      if (paramVariables == null) {
        return null;
      }
      break;
    case 1: 
    case 2: 
    case 3: 
    case 4: 
    case 5: 
    case 6: 
    case 7: 
      return Utils.doubleToString(evaluate(paramArrayOfExpression, paramVariables));
    }
    String str;
    switch (arrayOfInt[this.mFun.ordinal()])
    {
    default: 
      str = paramArrayOfExpression[1].evaluateStr();
      paramArrayOfExpression = paramArrayOfExpression[2].evaluateStr();
      if (str == null) {
        return paramVariables;
      }
      if (paramArrayOfExpression != null) {
        break;
      }
      break;
    case 13: 
      return paramVariables.trim();
    case 12: 
      return paramVariables.toUpperCase();
    case 11: 
      return paramVariables.toLowerCase();
    }
    switch (arrayOfInt[this.mFun.ordinal()])
    {
    default: 
      paramArrayOfExpression = new StringBuilder();
      paramArrayOfExpression.append("fail to evaluteStr FunctionExpression, invalid function: ");
      paramArrayOfExpression.append(this.mFun.toString());
      Log.e("Expression", paramArrayOfExpression.toString());
      return null;
    case 10: 
      try
      {
        paramArrayOfExpression = paramVariables.replaceFirst(str, paramArrayOfExpression);
        return paramArrayOfExpression;
      }
      catch (PatternSyntaxException paramArrayOfExpression)
      {
        paramArrayOfExpression = new StringBuilder();
        paramArrayOfExpression.append("invaid pattern of replaceFirst:");
        paramArrayOfExpression.append(str);
        Log.w("Expression", paramArrayOfExpression.toString());
        return paramVariables;
      }
    case 9: 
      try
      {
        paramArrayOfExpression = paramVariables.replaceAll(str, paramArrayOfExpression);
        return paramArrayOfExpression;
      }
      catch (PatternSyntaxException paramArrayOfExpression)
      {
        paramArrayOfExpression = new StringBuilder();
        paramArrayOfExpression.append("invaid pattern of replaceAll: ");
        paramArrayOfExpression.append(str);
        Log.w("Expression", paramArrayOfExpression.toString());
        return paramVariables;
      }
    }
    return paramVariables.replace(str, paramArrayOfExpression);
    return paramVariables;
  }
  
  public void reset() {}
  
  private static enum Fun
  {
    static
    {
      Fun localFun1 = new Fun("INVALID", 0);
      INVALID = localFun1;
      Fun localFun2 = new Fun("STR_TOLOWER", 1);
      STR_TOLOWER = localFun2;
      Fun localFun3 = new Fun("STR_TOUPPER", 2);
      STR_TOUPPER = localFun3;
      Fun localFun4 = new Fun("STR_TRIM", 3);
      STR_TRIM = localFun4;
      Fun localFun5 = new Fun("STR_REPLACE", 4);
      STR_REPLACE = localFun5;
      Fun localFun6 = new Fun("STR_REPLACEALL", 5);
      STR_REPLACEALL = localFun6;
      Fun localFun7 = new Fun("STR_REPLACEFIRST", 6);
      STR_REPLACEFIRST = localFun7;
      Fun localFun8 = new Fun("STR_CONTAINS", 7);
      STR_CONTAINS = localFun8;
      Fun localFun9 = new Fun("STR_STARTWITH", 8);
      STR_STARTWITH = localFun9;
      Fun localFun10 = new Fun("STR_ENDSWITH", 9);
      STR_ENDSWITH = localFun10;
      Fun localFun11 = new Fun("STR_ISEMPTY", 10);
      STR_ISEMPTY = localFun11;
      Fun localFun12 = new Fun("STR_MATCHES", 11);
      STR_MATCHES = localFun12;
      Fun localFun13 = new Fun("STR_INDEXOF", 12);
      STR_INDEXOF = localFun13;
      Fun localFun14 = new Fun("STR_LASTINDEXOF", 13);
      STR_LASTINDEXOF = localFun14;
      $VALUES = new Fun[] { localFun1, localFun2, localFun3, localFun4, localFun5, localFun6, localFun7, localFun8, localFun9, localFun10, localFun11, localFun12, localFun13, localFun14 };
    }
    
    private Fun() {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.data.StringFunctions
 * JD-Core Version:    0.7.0.1
 */