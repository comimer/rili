package com.miui.maml.data;

import android.text.TextUtils;
import android.util.Log;
import com.miui.maml.util.Utils;
import java.math.BigDecimal;
import miui.util.HashUtils;

public class BaseFunctions
  extends Expression.FunctionImpl
{
  private static final String LOG_TAG = "Expression";
  private Fun fun;
  private Expression mEvalExp;
  private String mEvalExpStr;
  
  private BaseFunctions(Fun paramFun, int paramInt)
  {
    super(paramInt);
    this.fun = paramFun;
  }
  
  private int digit(int paramInt1, int paramInt2)
  {
    int i = -1;
    if (paramInt2 <= 0) {
      return -1;
    }
    int j = 0;
    int k = j;
    int m = paramInt1;
    if (paramInt1 == 0)
    {
      k = j;
      m = paramInt1;
      if (paramInt2 == 1) {
        return 0;
      }
    }
    while ((m > 0) && (k < paramInt2 - 1))
    {
      m /= 10;
      k++;
    }
    paramInt1 = i;
    if (m > 0) {
      paramInt1 = m % 10;
    }
    return paramInt1;
  }
  
  public static void load()
  {
    Expression.FunctionExpression.registerFunction("rand", new BaseFunctions(Fun.RAND, 0));
    Expression.FunctionExpression.registerFunction("sin", new BaseFunctions(Fun.SIN, 1));
    Expression.FunctionExpression.registerFunction("cos", new BaseFunctions(Fun.COS, 1));
    Expression.FunctionExpression.registerFunction("tan", new BaseFunctions(Fun.TAN, 1));
    Expression.FunctionExpression.registerFunction("asin", new BaseFunctions(Fun.ASIN, 1));
    Expression.FunctionExpression.registerFunction("acos", new BaseFunctions(Fun.ACOS, 1));
    Expression.FunctionExpression.registerFunction("atan", new BaseFunctions(Fun.ATAN, 1));
    Expression.FunctionExpression.registerFunction("sinh", new BaseFunctions(Fun.SINH, 1));
    Expression.FunctionExpression.registerFunction("cosh", new BaseFunctions(Fun.COSH, 1));
    Expression.FunctionExpression.registerFunction("sqrt", new BaseFunctions(Fun.SQRT, 1));
    Expression.FunctionExpression.registerFunction("abs", new BaseFunctions(Fun.ABS, 1));
    Expression.FunctionExpression.registerFunction("len", new BaseFunctions(Fun.LEN, 1));
    Expression.FunctionExpression.registerFunction("eval", new BaseFunctions(Fun.EVAL, 1));
    Expression.FunctionExpression.registerFunction("preciseeval", new BaseFunctions(Fun.PRECISE_EVAL, 2));
    Expression.FunctionExpression.registerFunction("round", new BaseFunctions(Fun.ROUND, 1));
    Expression.FunctionExpression.registerFunction("int", new BaseFunctions(Fun.INT, 1));
    Expression.FunctionExpression.registerFunction("num", new BaseFunctions(Fun.NUM, 1));
    Expression.FunctionExpression.registerFunction("isnull", new BaseFunctions(Fun.ISNULL, 1));
    Expression.FunctionExpression.registerFunction("not", new BaseFunctions(Fun.NOT, 1));
    Expression.FunctionExpression.registerFunction("min", new BaseFunctions(Fun.MIN, 2));
    Expression.FunctionExpression.registerFunction("max", new BaseFunctions(Fun.MAX, 2));
    Expression.FunctionExpression.registerFunction("pow", new BaseFunctions(Fun.POW, 2));
    Expression.FunctionExpression.registerFunction("log", new BaseFunctions(Fun.LOG, 1));
    Expression.FunctionExpression.registerFunction("log10", new BaseFunctions(Fun.LOG10, 1));
    Expression.FunctionExpression.registerFunction("digit", new BaseFunctions(Fun.DIGIT, 2));
    Expression.FunctionExpression.registerFunction("eq", new BaseFunctions(Fun.EQ, 2));
    Expression.FunctionExpression.registerFunction("ne", new BaseFunctions(Fun.NE, 2));
    Expression.FunctionExpression.registerFunction("ge", new BaseFunctions(Fun.GE, 2));
    Expression.FunctionExpression.registerFunction("gt", new BaseFunctions(Fun.GT, 2));
    Expression.FunctionExpression.registerFunction("le", new BaseFunctions(Fun.LE, 2));
    Expression.FunctionExpression.registerFunction("lt", new BaseFunctions(Fun.LT, 2));
    Expression.FunctionExpression.registerFunction("ifelse", new BaseFunctions(Fun.IFELSE, 3));
    Expression.FunctionExpression.registerFunction("and", new BaseFunctions(Fun.AND, 2));
    Expression.FunctionExpression.registerFunction("or", new BaseFunctions(Fun.OR, 2));
    Expression.FunctionExpression.registerFunction("eqs", new BaseFunctions(Fun.EQS, 2));
    Expression.FunctionExpression.registerFunction("substr", new BaseFunctions(Fun.SUBSTR, 2));
    Expression.FunctionExpression.registerFunction("hash", new BaseFunctions(Fun.HASH, 2));
    Expression.FunctionExpression.registerFunction("nullobj", new NullObjFunction());
    Expression.FunctionExpression.registerFunction("floor", new BaseFunctions(Fun.FLOOR, 1));
    Expression.FunctionExpression.registerFunction("ceil", new BaseFunctions(Fun.CEIL, 1));
  }
  
  public double evaluate(Expression[] paramArrayOfExpression, Variables paramVariables)
  {
    Object localObject = 1.$SwitchMap$com$miui$maml$data$BaseFunctions$Fun;
    if (localObject[this.fun.ordinal()] != 1)
    {
      int i = 0;
      int j = 0;
      int k = 0;
      double d1 = paramArrayOfExpression[0].evaluate();
      int m = localObject[this.fun.ordinal()];
      double d2 = 1.0D;
      double d3 = 0.0D;
      switch (m)
      {
      default: 
        paramArrayOfExpression = new StringBuilder();
        paramArrayOfExpression.append("fail to evalute FunctionExpression, invalid function: ");
        paramArrayOfExpression.append(this.fun.toString());
        Log.e("Expression", paramArrayOfExpression.toString());
        return 0.0D;
      case 38: 
        return Math.ceil(d1);
      case 37: 
        return Math.floor(d1);
      case 36: 
        return Utils.stringToDouble(evaluateStr(paramArrayOfExpression, paramVariables), 0.0D);
      case 35: 
        if (!TextUtils.equals(paramArrayOfExpression[0].evaluateStr(), paramArrayOfExpression[1].evaluateStr())) {
          d2 = 0.0D;
        }
        return d2;
      case 34: 
        i = paramArrayOfExpression.length;
        while (k < i)
        {
          if (paramArrayOfExpression[k].evaluate() > 0.0D) {
            return 1.0D;
          }
          k++;
        }
        return 0.0D;
      case 33: 
        j = paramArrayOfExpression.length;
        for (k = i; k < j; k++) {
          if (paramArrayOfExpression[k].evaluate() <= 0.0D) {
            return 0.0D;
          }
        }
        return 1.0D;
      case 32: 
        i = paramArrayOfExpression.length;
        k = j;
        if (i % 2 != 1)
        {
          paramArrayOfExpression = new StringBuilder();
          paramArrayOfExpression.append("function parameter number should be 2*n+1: ");
          paramArrayOfExpression.append(this.fun.toString());
          Log.e("Expression", paramArrayOfExpression.toString());
          return 0.0D;
        }
        for (;;)
        {
          j = i - 1;
          if (k >= j / 2) {
            break;
          }
          j = k * 2;
          if (paramArrayOfExpression[j].evaluate() > 0.0D) {
            return paramArrayOfExpression[(j + 1)].evaluate();
          }
          k++;
        }
        return paramArrayOfExpression[j].evaluate();
      case 31: 
        if (d1 >= paramArrayOfExpression[1].evaluate()) {
          d2 = 0.0D;
        }
        return d2;
      case 30: 
        if (d1 > paramArrayOfExpression[1].evaluate()) {
          d2 = 0.0D;
        }
        return d2;
      case 29: 
        if (d1 <= paramArrayOfExpression[1].evaluate()) {
          d2 = 0.0D;
        }
        return d2;
      case 28: 
        if (d1 < paramArrayOfExpression[1].evaluate()) {
          d2 = 0.0D;
        }
        return d2;
      case 27: 
        if (d1 == paramArrayOfExpression[1].evaluate()) {
          d2 = 0.0D;
        }
        return d2;
      case 26: 
        if (d1 != paramArrayOfExpression[1].evaluate()) {
          d2 = 0.0D;
        }
        return d2;
      case 25: 
        return digit((int)d1, (int)paramArrayOfExpression[1].evaluate());
      case 24: 
        return Math.log10(d1);
      case 23: 
        return Math.log(d1);
      case 22: 
        return Math.pow(d1, paramArrayOfExpression[1].evaluate());
      case 21: 
        return Math.max(d1, paramArrayOfExpression[1].evaluate());
      case 20: 
        return Math.min(d1, paramArrayOfExpression[1].evaluate());
      case 19: 
        if (d1 > 0.0D) {
          d2 = 0.0D;
        }
        return d2;
      case 18: 
        if (!paramArrayOfExpression[0].isNull()) {
          d2 = 0.0D;
        }
        return d2;
      case 17: 
        return d1;
      case 16: 
        return (int)d1;
      case 15: 
        return Math.round(d1);
      case 14: 
        localObject = paramArrayOfExpression[0].evaluateStr();
        if (localObject == null) {
          return 0.0D;
        }
        if (!((String)localObject).equals(this.mEvalExpStr))
        {
          this.mEvalExpStr = ((String)localObject);
          this.mEvalExp = Expression.build(paramVariables, (String)localObject);
        }
        paramVariables = this.mEvalExp;
        if (paramVariables != null) {
          paramVariables = paramVariables.preciseEvaluate();
        } else {
          paramVariables = null;
        }
        if (paramVariables != null)
        {
          k = paramVariables.scale();
          i = (int)paramArrayOfExpression[1].evaluate();
          paramArrayOfExpression = paramVariables;
          if (i > 0)
          {
            paramArrayOfExpression = paramVariables;
            if (k > i) {
              paramArrayOfExpression = paramVariables.setScale(i, 4);
            }
          }
          return paramArrayOfExpression.doubleValue();
        }
        return (0.0D / 0.0D);
      case 13: 
        paramArrayOfExpression = paramArrayOfExpression[0].evaluateStr();
        if (paramArrayOfExpression == null) {
          return 0.0D;
        }
        if (!paramArrayOfExpression.equals(this.mEvalExpStr))
        {
          this.mEvalExpStr = paramArrayOfExpression;
          this.mEvalExp = Expression.build(paramVariables, paramArrayOfExpression);
        }
        paramArrayOfExpression = this.mEvalExp;
        if (paramArrayOfExpression == null) {
          d2 = d3;
        } else {
          d2 = paramArrayOfExpression.evaluate();
        }
        return d2;
      case 12: 
        paramArrayOfExpression = paramArrayOfExpression[0].evaluateStr();
        if (paramArrayOfExpression == null) {
          return 0.0D;
        }
        return paramArrayOfExpression.length();
      case 11: 
        return Math.abs(d1);
      case 10: 
        return Math.sqrt(d1);
      case 9: 
        return Math.cosh(d1);
      case 8: 
        return Math.sinh(d1);
      case 7: 
        return Math.atan(d1);
      case 6: 
        return Math.acos(d1);
      case 5: 
        return Math.asin(d1);
      case 4: 
        return Math.tan(d1);
      case 3: 
        return Math.cos(d1);
      }
      return Math.sin(d1);
    }
    return Math.random();
  }
  
  public String evaluateStr(Expression[] paramArrayOfExpression, Variables paramVariables)
  {
    int i = 1.$SwitchMap$com$miui$maml$data$BaseFunctions$Fun[this.fun.ordinal()];
    int j = 0;
    Object localObject = null;
    if (i != 13)
    {
      int m;
      if (i != 32)
      {
        if (i != 36)
        {
          if (i != 39) {
            return Utils.doubleToString(evaluate(paramArrayOfExpression, paramVariables));
          }
          paramVariables = paramArrayOfExpression[0].evaluateStr();
          paramArrayOfExpression = paramArrayOfExpression[1].evaluateStr();
          if ((paramVariables != null) && (paramArrayOfExpression != null)) {
            return HashUtils.getHash(paramVariables, paramArrayOfExpression);
          }
          return null;
        }
        paramVariables = paramArrayOfExpression[0].evaluateStr();
        if (paramVariables == null) {
          return null;
        }
        j = paramArrayOfExpression.length;
        int k = (int)paramArrayOfExpression[1].evaluate();
        if (j >= 3) {}
        try
        {
          i = (int)paramArrayOfExpression[2].evaluate();
          m = paramVariables.length();
          j = i;
          if (i > m) {
            j = m;
          }
          return paramVariables.substring(k, j + k);
        }
        catch (IndexOutOfBoundsException paramArrayOfExpression)
        {
          return null;
        }
        paramArrayOfExpression = paramVariables.substring(k);
        return paramArrayOfExpression;
      }
      i = paramArrayOfExpression.length;
      if (i % 2 != 1)
      {
        paramArrayOfExpression = new StringBuilder();
        paramArrayOfExpression.append("function parameter number should be 2*n+1: ");
        paramArrayOfExpression.append(this.fun.toString());
        Log.e("Expression", paramArrayOfExpression.toString());
        return null;
      }
      for (;;)
      {
        m = i - 1;
        if (j >= m / 2) {
          break;
        }
        m = j * 2;
        if (paramArrayOfExpression[m].evaluate() > 0.0D) {
          return paramArrayOfExpression[(m + 1)].evaluateStr();
        }
        j++;
      }
      return paramArrayOfExpression[m].evaluateStr();
    }
    paramArrayOfExpression = paramArrayOfExpression[0].evaluateStr();
    if (paramArrayOfExpression == null) {
      return null;
    }
    if (!paramArrayOfExpression.equals(this.mEvalExpStr))
    {
      this.mEvalExpStr = paramArrayOfExpression;
      this.mEvalExp = Expression.build(paramVariables, paramArrayOfExpression);
    }
    paramArrayOfExpression = this.mEvalExp;
    if (paramArrayOfExpression == null) {
      paramArrayOfExpression = localObject;
    } else {
      paramArrayOfExpression = paramArrayOfExpression.evaluateStr();
    }
    return paramArrayOfExpression;
  }
  
  public void reset()
  {
    this.mEvalExpStr = null;
    this.mEvalExp = null;
  }
  
  private static enum Fun
  {
    static
    {
      Fun localFun1 = new Fun("INVALID", 0);
      INVALID = localFun1;
      Fun localFun2 = new Fun("RAND", 1);
      RAND = localFun2;
      Fun localFun3 = new Fun("SIN", 2);
      SIN = localFun3;
      Fun localFun4 = new Fun("COS", 3);
      COS = localFun4;
      Fun localFun5 = new Fun("TAN", 4);
      TAN = localFun5;
      Fun localFun6 = new Fun("ASIN", 5);
      ASIN = localFun6;
      Fun localFun7 = new Fun("ACOS", 6);
      ACOS = localFun7;
      Fun localFun8 = new Fun("ATAN", 7);
      ATAN = localFun8;
      Fun localFun9 = new Fun("SINH", 8);
      SINH = localFun9;
      Fun localFun10 = new Fun("COSH", 9);
      COSH = localFun10;
      Fun localFun11 = new Fun("SQRT", 10);
      SQRT = localFun11;
      Fun localFun12 = new Fun("ABS", 11);
      ABS = localFun12;
      Fun localFun13 = new Fun("LEN", 12);
      LEN = localFun13;
      Fun localFun14 = new Fun("EVAL", 13);
      EVAL = localFun14;
      Fun localFun15 = new Fun("PRECISE_EVAL", 14);
      PRECISE_EVAL = localFun15;
      Fun localFun16 = new Fun("ROUND", 15);
      ROUND = localFun16;
      Fun localFun17 = new Fun("INT", 16);
      INT = localFun17;
      Fun localFun18 = new Fun("NUM", 17);
      NUM = localFun18;
      Fun localFun19 = new Fun("MIN", 18);
      MIN = localFun19;
      Fun localFun20 = new Fun("MAX", 19);
      MAX = localFun20;
      Fun localFun21 = new Fun("POW", 20);
      POW = localFun21;
      Fun localFun22 = new Fun("LOG", 21);
      LOG = localFun22;
      Fun localFun23 = new Fun("LOG10", 22);
      LOG10 = localFun23;
      Fun localFun24 = new Fun("DIGIT", 23);
      DIGIT = localFun24;
      Fun localFun25 = new Fun("EQ", 24);
      EQ = localFun25;
      Fun localFun26 = new Fun("NE", 25);
      NE = localFun26;
      Fun localFun27 = new Fun("GE", 26);
      GE = localFun27;
      Fun localFun28 = new Fun("GT", 27);
      GT = localFun28;
      Fun localFun29 = new Fun("LE", 28);
      LE = localFun29;
      Fun localFun30 = new Fun("LT", 29);
      LT = localFun30;
      Fun localFun31 = new Fun("ISNULL", 30);
      ISNULL = localFun31;
      Fun localFun32 = new Fun("NOT", 31);
      NOT = localFun32;
      Fun localFun33 = new Fun("IFELSE", 32);
      IFELSE = localFun33;
      Fun localFun34 = new Fun("AND", 33);
      AND = localFun34;
      Fun localFun35 = new Fun("OR", 34);
      OR = localFun35;
      Fun localFun36 = new Fun("EQS", 35);
      EQS = localFun36;
      Fun localFun37 = new Fun("SUBSTR", 36);
      SUBSTR = localFun37;
      Fun localFun38 = new Fun("HASH", 37);
      HASH = localFun38;
      Fun localFun39 = new Fun("FLOOR", 38);
      FLOOR = localFun39;
      Fun localFun40 = new Fun("CEIL", 39);
      CEIL = localFun40;
      $VALUES = new Fun[] { localFun1, localFun2, localFun3, localFun4, localFun5, localFun6, localFun7, localFun8, localFun9, localFun10, localFun11, localFun12, localFun13, localFun14, localFun15, localFun16, localFun17, localFun18, localFun19, localFun20, localFun21, localFun22, localFun23, localFun24, localFun25, localFun26, localFun27, localFun28, localFun29, localFun30, localFun31, localFun32, localFun33, localFun34, localFun35, localFun36, localFun37, localFun38, localFun39, localFun40 };
    }
    
    private Fun() {}
  }
  
  private static class NullObjFunction
    extends Expression.FunctionImpl
  {
    private String mObjName;
    private int mVarIndex = -1;
    
    public NullObjFunction()
    {
      super();
    }
    
    public double evaluate(Expression[] paramArrayOfExpression, Variables paramVariables)
    {
      paramArrayOfExpression = paramArrayOfExpression[0].evaluateStr();
      if (paramArrayOfExpression != this.mObjName)
      {
        this.mObjName = paramArrayOfExpression;
        if ((!TextUtils.isEmpty(paramArrayOfExpression)) && (paramVariables.existsObj(this.mObjName))) {
          this.mVarIndex = paramVariables.registerVariable(this.mObjName);
        } else {
          this.mVarIndex = -1;
        }
      }
      int i = this.mVarIndex;
      double d = 1.0D;
      if (i == -1) {
        return 1.0D;
      }
      if (paramVariables.get(i) != null) {
        d = 0.0D;
      }
      return d;
    }
    
    public String evaluateStr(Expression[] paramArrayOfExpression, Variables paramVariables)
    {
      return null;
    }
    
    public void reset()
    {
      this.mObjName = null;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.data.BaseFunctions
 * JD-Core Version:    0.7.0.1
 */