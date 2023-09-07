package com.miui.maml.data;

import java.util.IllegalFormatException;

public class FormatFunctions
  extends Expression.FunctionImpl
{
  private final Fun mFun;
  
  private FormatFunctions(Fun paramFun, int paramInt)
  {
    super(paramInt);
    this.mFun = paramFun;
  }
  
  public static void load()
  {
    Expression.FunctionExpression.registerFunction("formatDate", new FormatFunctions(Fun.FORMAT_DATE, 2));
    Expression.FunctionExpression.registerFunction("formatFloat", new FormatFunctions(Fun.FORMAT_FLOAT, 2));
    Expression.FunctionExpression.registerFunction("formatInt", new FormatFunctions(Fun.FORMAT_INT, 2));
  }
  
  public double evaluate(Expression[] paramArrayOfExpression, Variables paramVariables)
  {
    return 0.0D;
  }
  
  public String evaluateStr(Expression[] paramArrayOfExpression, Variables paramVariables)
  {
    paramVariables = paramArrayOfExpression[0].evaluateStr();
    if (paramVariables == null) {
      return null;
    }
    int i = 1.$SwitchMap$com$miui$maml$data$FormatFunctions$Fun[this.mFun.ordinal()];
    if ((i == 1) || ((i == 2) || (i == 3))) {}
    try
    {
      return String.format(paramVariables, new Object[] { Integer.valueOf((int)paramArrayOfExpression[1].evaluate()) });
    }
    catch (IllegalFormatException paramArrayOfExpression)
    {
      label88:
      break label88;
    }
    paramArrayOfExpression = String.format(paramVariables, new Object[] { Double.valueOf(paramArrayOfExpression[1].evaluate()) });
    return paramArrayOfExpression;
    return null;
    return DateTimeVariableUpdater.formatDate(paramVariables, paramArrayOfExpression[1].evaluate());
  }
  
  public void reset() {}
  
  private static enum Fun
  {
    static
    {
      Fun localFun1 = new Fun("INVALID", 0);
      INVALID = localFun1;
      Fun localFun2 = new Fun("FORMAT_DATE", 1);
      FORMAT_DATE = localFun2;
      Fun localFun3 = new Fun("FORMAT_FLOAT", 2);
      FORMAT_FLOAT = localFun3;
      Fun localFun4 = new Fun("FORMAT_INT", 3);
      FORMAT_INT = localFun4;
      $VALUES = new Fun[] { localFun1, localFun2, localFun3, localFun4 };
    }
    
    private Fun() {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.data.FormatFunctions
 * JD-Core Version:    0.7.0.1
 */