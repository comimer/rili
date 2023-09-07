package com.miui.maml.data;

import android.text.TextUtils;
import android.util.Log;
import com.miui.maml.util.Utils;
import java.math.BigDecimal;
import java.math.MathContext;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.Stack;
import org.json.JSONArray;
import org.json.JSONObject;

public abstract class Expression
{
  private static final boolean DEBUG = false;
  private static final String LOG_TAG = "Expression";
  
  public static Expression build(Variables paramVariables, String paramString)
  {
    paramString = buildInner(paramVariables, paramString);
    if (paramString == null) {
      paramVariables = null;
    } else {
      paramVariables = new RootExpression(paramVariables, paramString);
    }
    return paramVariables;
  }
  
  private static Expression buildBracket(Variables paramVariables, Expression.Tokenizer.Token paramToken, Stack<Expression.Tokenizer.Token> paramStack)
  {
    Expression[] arrayOfExpression = buildMultipleInner(paramVariables, paramToken.token);
    if (!checkParams(arrayOfExpression))
    {
      paramVariables = new StringBuilder();
      paramVariables.append("invalid expressions: ");
      paramVariables.append(paramToken.token);
      Log.e("Expression", paramVariables.toString());
      return null;
    }
    try
    {
      if ((!paramStack.isEmpty()) && (((Expression.Tokenizer.Token)paramStack.peek()).type == Expression.Tokenizer.TokenType.FUN)) {
        return new FunctionExpression(paramVariables, arrayOfExpression, ((Expression.Tokenizer.Token)paramStack.pop()).token);
      }
      if (arrayOfExpression.length == 1)
      {
        paramVariables = arrayOfExpression[0];
        return paramVariables;
      }
    }
    catch (Exception paramVariables)
    {
      paramVariables.printStackTrace();
      Log.e("Expression", paramVariables.toString());
      paramVariables = new StringBuilder();
      paramVariables.append("fail to buid: multiple expressions in brackets, but seems no function presents:");
      paramVariables.append(paramToken.token);
      Log.e("Expression", paramVariables.toString());
    }
    return null;
  }
  
  private static Expression buildInner(Variables paramVariables, String paramString)
  {
    if (TextUtils.isEmpty(paramString.trim())) {
      return null;
    }
    Tokenizer localTokenizer = new Tokenizer(paramString);
    Stack localStack1 = new Stack();
    Stack localStack2 = new Stack();
    Expression.Tokenizer.Token localToken;
    for (Object localObject1 = null;; localObject1 = localToken)
    {
      localToken = localTokenizer.getToken();
      int i = 1;
      if (localToken == null) {
        break;
      }
      Object localObject2 = 1.$SwitchMap$com$miui$maml$data$Expression$Tokenizer$TokenType;
      switch (localObject2[localToken.type.ordinal()])
      {
      default: 
        break;
      case 10: 
        localStack1.push(localToken);
        break;
      case 9: 
        localObject2 = localToken.info;
        if ((((OpeInfo)localObject2).participants == 1) && ((localObject1 == null) || (((Expression.Tokenizer.Token)localObject1).type == Expression.Tokenizer.TokenType.OPE)))
        {
          ((OpeInfo)localObject2).unary = true;
          localStack1.push(localToken);
        }
        else
        {
          while ((localStack1.size() > 0) && (((Expression.Tokenizer.Token)localStack1.peek()).type == Expression.Tokenizer.TokenType.OPE) && (((Expression.Tokenizer.Token)localStack1.peek()).info.priority - localToken.info.priority <= 0))
          {
            if (localStack2.size() < 2)
            {
              paramVariables = new StringBuilder();
              paramVariables.append("fail to buid: invalid operator position:");
              paramVariables.append(paramString);
              Log.e("Expression", paramVariables.toString());
              return null;
            }
            localObject1 = (Expression)localStack2.pop();
            localStack2.push(new BinaryExpression((Expression)localStack2.pop(), (Expression)localObject1, ((Expression.Tokenizer.Token)localStack1.pop()).op));
          }
          localStack1.push(localToken);
        }
        break;
      case 1: 
      case 2: 
      case 3: 
      case 4: 
      case 5: 
      case 6: 
      case 7: 
      case 8: 
        switch (localObject2[localToken.type.ordinal()])
        {
        default: 
          localObject1 = null;
          break;
        case 8: 
          if (localStack2.size() < 1)
          {
            paramVariables = new StringBuilder();
            paramVariables.append("fail to buid: no array name before []:");
            paramVariables.append(paramString);
            Log.e("Expression", paramVariables.toString());
            return null;
          }
          localObject1 = (Expression)localStack2.pop();
          if ((localObject1 instanceof VariableExpression))
          {
            Expression localExpression = buildInner(paramVariables, localToken.token);
            if (localExpression == null)
            {
              paramVariables = new StringBuilder();
              paramVariables.append("fail to buid: no index expression in []:");
              paramVariables.append(paramString);
              Log.e("Expression", paramVariables.toString());
              return null;
            }
            localObject2 = ((VariableExpression)localObject1).getName();
            if ((localObject1 instanceof NumberVariableExpression))
            {
              localObject2 = new NumberArrayVariableExpression(paramVariables, (String)localObject2, localExpression);
              break label601;
            }
            if ((localObject1 instanceof StringVariableExpression))
            {
              localObject2 = new StringArrayVariableExpression(paramVariables, (String)localObject2, localExpression);
              break label601;
            }
          }
          else
          {
            localObject1 = new StringBuilder();
            ((StringBuilder)localObject1).append("fail to buid: the expression before [] is not a variable:");
            ((StringBuilder)localObject1).append(paramString);
            Log.e("Expression", ((StringBuilder)localObject1).toString());
          }
          localObject2 = null;
          localObject1 = localObject2;
          if (localObject2 == null) {
            return null;
          }
          break;
        case 7: 
          localObject2 = buildBracket(paramVariables, localToken, localStack1);
          localObject1 = localObject2;
          if (localObject2 == null) {
            return null;
          }
          break;
        case 6: 
          localObject1 = new StringExpression(localToken.token);
          break;
        case 5: 
          if ((localStack1.empty()) || (((Expression.Tokenizer.Token)localStack1.peek()).op != Ope.MIN) || (!((Expression.Tokenizer.Token)localStack1.peek()).info.unary)) {
            i = 0;
          }
          localObject2 = new StringBuilder();
          if (i != 0) {
            localObject1 = "-";
          } else {
            localObject1 = "";
          }
          ((StringBuilder)localObject2).append((String)localObject1);
          ((StringBuilder)localObject2).append(localToken.token);
          localObject2 = new NumberExpression(((StringBuilder)localObject2).toString());
          localObject1 = localObject2;
          if (i != 0)
          {
            localStack1.pop();
            localObject1 = localObject2;
          }
          break;
        case 4: 
          localObject1 = new JsonArrayVariableExpression(paramVariables, localToken.token);
          break;
        case 3: 
          localObject1 = new JsonObjectVariableExpression(paramVariables, localToken.token);
          break;
        case 2: 
          label601:
          localObject1 = new StringVariableExpression(paramVariables, localToken.token);
          break;
        }
        for (localObject1 = new NumberVariableExpression(paramVariables, localToken.token); (!localStack1.empty()) && (((Expression.Tokenizer.Token)localStack1.peek()).info != null) && (((Expression.Tokenizer.Token)localStack1.peek()).info.unary); localObject1 = new UnaryExpression((Expression)localObject1, ((Expression.Tokenizer.Token)localStack1.pop()).op)) {}
        localStack2.push(localObject1);
      }
    }
    if (localStack2.size() != localStack1.size() + 1)
    {
      paramVariables = new StringBuilder();
      paramVariables.append("fail to buid: invalid expression:");
      paramVariables.append(paramString);
      Log.e("Expression", paramVariables.toString());
      return null;
    }
    for (paramVariables = (Expression)localStack2.pop(); localStack1.size() > 0; paramVariables = new BinaryExpression((Expression)localStack2.pop(), paramVariables, ((Expression.Tokenizer.Token)localStack1.pop()).op)) {}
    return paramVariables;
  }
  
  public static Expression[] buildMultiple(Variables paramVariables, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    Expression[] arrayOfExpression = buildMultipleInner(paramVariables, paramString);
    paramString = new Expression[arrayOfExpression.length];
    for (int i = 0; i < arrayOfExpression.length; i++)
    {
      Expression localExpression = arrayOfExpression[i];
      if ((localExpression != null) && (!(localExpression instanceof NumberExpression)) && (!(localExpression instanceof StringExpression))) {
        paramString[i] = new RootExpression(paramVariables, localExpression);
      } else {
        paramString[i] = localExpression;
      }
    }
    return paramString;
  }
  
  private static Expression[] buildMultipleInner(Variables paramVariables, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    int j = 0;
    int k = j;
    int m = k;
    int n = k;
    while (i < paramString.length())
    {
      int i1 = paramString.charAt(i);
      int i2 = j;
      k = m;
      if (n == 0) {
        if ((i1 == 44) && (m == 0))
        {
          localArrayList.add(buildInner(paramVariables, paramString.substring(j, i)));
          i2 = i + 1;
          k = m;
        }
        else if (i1 == 40)
        {
          k = m + 1;
          i2 = j;
        }
        else
        {
          i2 = j;
          k = m;
          if (i1 == 41)
          {
            k = m - 1;
            i2 = j;
          }
        }
      }
      m = n;
      if (i1 == 39) {
        m = n ^ 0x1;
      }
      i++;
      j = i2;
      n = m;
      m = k;
    }
    if (j < paramString.length()) {
      localArrayList.add(buildInner(paramVariables, paramString.substring(j)));
    }
    return (Expression[])localArrayList.toArray(new Expression[localArrayList.size()]);
  }
  
  private static boolean checkParams(Expression[] paramArrayOfExpression)
  {
    for (int i = 0; i < paramArrayOfExpression.length; i++) {
      if (paramArrayOfExpression[i] == null) {
        return false;
      }
    }
    return true;
  }
  
  private static boolean isDigitCharRest(char paramChar)
  {
    boolean bool;
    if (((paramChar >= '0') && (paramChar <= '9')) || ((paramChar >= 'a') && (paramChar <= 'f')) || ((paramChar >= 'A') && (paramChar <= 'F')) || (paramChar == '.')) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private static boolean isDigitCharStart(char paramChar)
  {
    boolean bool;
    if (((paramChar >= '0') && (paramChar <= '9')) || (paramChar == '.')) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private static boolean isFunctionCharRest(char paramChar)
  {
    boolean bool;
    if ((!isFunctionCharStart(paramChar)) && (paramChar != '_') && ((paramChar < '0') || (paramChar > '9'))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  private static boolean isFunctionCharStart(char paramChar)
  {
    boolean bool;
    if (((paramChar >= 'a') && (paramChar <= 'z')) || ((paramChar >= 'A') && (paramChar <= 'Z'))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private static boolean isVariableChar(char paramChar)
  {
    boolean bool;
    if (((paramChar < 'a') || (paramChar > 'z')) && ((paramChar < 'A') || (paramChar > 'Z')) && (paramChar != '_') && (paramChar != '.') && ((paramChar < '0') || (paramChar > '9'))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public void accept(ExpressionVisitor paramExpressionVisitor)
  {
    paramExpressionVisitor.visit(this);
  }
  
  public abstract double evaluate();
  
  public JSONArray evaluateJsonArray()
  {
    return null;
  }
  
  public JSONObject evaluateJsonObject()
  {
    return null;
  }
  
  public String evaluateStr()
  {
    return null;
  }
  
  public boolean isNull()
  {
    return false;
  }
  
  public BigDecimal preciseEvaluate()
  {
    double d = evaluate();
    try
    {
      BigDecimal localBigDecimal = BigDecimal.valueOf(d);
      return localBigDecimal;
    }
    catch (NumberFormatException localNumberFormatException) {}
    return null;
  }
  
  static abstract class ArrayVariableExpression
    extends Expression.VariableExpression
  {
    protected Expression mIndexExp;
    
    public ArrayVariableExpression(Variables paramVariables, String paramString, Expression paramExpression)
    {
      super(paramString, false);
      this.mIndexExp = paramExpression;
    }
    
    public void accept(ExpressionVisitor paramExpressionVisitor)
    {
      paramExpressionVisitor.visit(this);
      this.mIndexExp.accept(paramExpressionVisitor);
    }
  }
  
  static class BinaryExpression
    extends Expression
  {
    private Expression mExp1;
    private Expression mExp2;
    private Expression.Ope mOpe;
    
    public BinaryExpression(Expression paramExpression1, Expression paramExpression2, Expression.Ope paramOpe)
    {
      Expression.Ope localOpe = Expression.Ope.INVALID;
      this.mExp1 = paramExpression1;
      this.mExp2 = paramExpression2;
      this.mOpe = paramOpe;
      if (paramOpe == localOpe)
      {
        paramExpression1 = new StringBuilder();
        paramExpression1.append("BinaryExpression: invalid operator:");
        paramExpression1.append(paramOpe);
        Log.e("Expression", paramExpression1.toString());
      }
    }
    
    public void accept(ExpressionVisitor paramExpressionVisitor)
    {
      paramExpressionVisitor.visit(this);
      this.mExp1.accept(paramExpressionVisitor);
      this.mExp2.accept(paramExpressionVisitor);
    }
    
    public double evaluate()
    {
      int i = Expression.1.$SwitchMap$com$miui$maml$data$Expression$Ope[this.mOpe.ordinal()];
      if (i != 1)
      {
        double d1 = 1.0D;
        switch (i)
        {
        default: 
          Log.e("Expression", "fail to evalute BinaryExpression, invalid operator");
          return 0.0D;
        case 20: 
          if (this.mExp1.evaluate() > this.mExp2.evaluate()) {
            d1 = 0.0D;
          }
          return d1;
        case 19: 
          if (this.mExp1.evaluate() >= this.mExp2.evaluate()) {
            d1 = 0.0D;
          }
          return d1;
        case 18: 
          if (this.mExp1.evaluate() < this.mExp2.evaluate()) {
            d1 = 0.0D;
          }
          return d1;
        case 17: 
          if (this.mExp1.evaluate() <= this.mExp2.evaluate()) {
            d1 = 0.0D;
          }
          return d1;
        case 16: 
          double d2 = d1;
          if (this.mExp1.evaluate() <= 0.0D) {
            if (this.mExp2.evaluate() > 0.0D) {
              d2 = d1;
            } else {
              d2 = 0.0D;
            }
          }
          return d2;
        case 15: 
          if ((this.mExp1.evaluate() <= 0.0D) || (this.mExp2.evaluate() <= 0.0D)) {
            d1 = 0.0D;
          }
          return d1;
        case 14: 
          if (this.mExp1.evaluate() == this.mExp2.evaluate()) {
            d1 = 0.0D;
          }
          return d1;
        case 13: 
          if (this.mExp1.evaluate() != this.mExp2.evaluate()) {
            d1 = 0.0D;
          }
          return d1;
        case 12: 
          return this.mExp1.evaluate() >> (int)this.mExp2.evaluate();
        case 11: 
          return this.mExp1.evaluate() << (int)this.mExp2.evaluate();
        case 10: 
          return this.mExp1.evaluate() ^ this.mExp2.evaluate();
        case 9: 
          return this.mExp1.evaluate() | this.mExp2.evaluate();
        case 8: 
          return this.mExp1.evaluate() & this.mExp2.evaluate();
        case 7: 
          return this.mExp1.evaluate() % this.mExp2.evaluate();
        case 6: 
          return this.mExp1.evaluate() / this.mExp2.evaluate();
        case 5: 
          return this.mExp1.evaluate() * this.mExp2.evaluate();
        }
        return this.mExp1.evaluate() + this.mExp2.evaluate();
      }
      return this.mExp1.evaluate() - this.mExp2.evaluate();
    }
    
    public String evaluateStr()
    {
      String str1 = this.mExp1.evaluateStr();
      String str2 = this.mExp2.evaluateStr();
      if (Expression.1.$SwitchMap$com$miui$maml$data$Expression$Ope[this.mOpe.ordinal()] != 4)
      {
        Log.e("Expression", "fail to evalute string BinaryExpression, invalid operator");
        return null;
      }
      if ((str1 == null) && (str2 == null)) {
        return null;
      }
      if (str1 == null) {
        return str2;
      }
      if (str2 == null) {
        return str1;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(str1);
      localStringBuilder.append(str2);
      return localStringBuilder.toString();
    }
    
    public boolean isNull()
    {
      int i = Expression.1.$SwitchMap$com$miui$maml$data$Expression$Ope[this.mOpe.ordinal()];
      boolean bool1 = false;
      boolean bool2 = false;
      if ((i != 1) && (i != 4))
      {
        if ((i != 5) && (i != 6) && (i != 7)) {
          switch (i)
          {
          default: 
            return true;
          }
        }
        if ((this.mExp1.isNull()) || (this.mExp2.isNull())) {
          bool2 = true;
        }
        return bool2;
      }
      bool2 = bool1;
      if (this.mExp1.isNull())
      {
        bool2 = bool1;
        if (this.mExp2.isNull()) {
          bool2 = true;
        }
      }
      return bool2;
    }
    
    public BigDecimal preciseEvaluate()
    {
      if (this.mOpe != Expression.Ope.INVALID)
      {
        BigDecimal localBigDecimal1 = this.mExp1.preciseEvaluate();
        BigDecimal localBigDecimal2 = this.mExp2.preciseEvaluate();
        if ((localBigDecimal1 != null) && (localBigDecimal2 != null))
        {
          int i = Expression.1.$SwitchMap$com$miui$maml$data$Expression$Ope[this.mOpe.ordinal()];
          if (i != 1)
          {
            if (i != 4)
            {
              if (i != 5)
              {
                if (i != 6)
                {
                  if (i != 7) {
                    break label119;
                  }
                  try
                  {
                    localBigDecimal2 = localBigDecimal1.remainder(localBigDecimal2);
                    return localBigDecimal2;
                  }
                  catch (Exception localException1)
                  {
                    return null;
                  }
                }
                try
                {
                  BigDecimal localBigDecimal3 = localBigDecimal1.divide(localException1, MathContext.DECIMAL128);
                  return localBigDecimal3;
                }
                catch (Exception localException2)
                {
                  return null;
                }
              }
              return localBigDecimal1.multiply(localException2);
            }
            else
            {
              return localBigDecimal1.add(localException2);
            }
          }
          else {
            return localBigDecimal1.subtract(localException2);
          }
        }
      }
      label119:
      Log.e("Expression", "fail to PRECISE evalute BinaryExpression, invalid operator");
      return null;
    }
  }
  
  public static class FunctionExpression
    extends Expression
  {
    protected static HashMap<String, Expression.FunctionImpl> sFunMap = new HashMap();
    private Expression.FunctionImpl mFun;
    private String mFunName;
    private Expression[] mParaExps;
    private Variables mVariables;
    
    static
    {
      FunctionsLoader.load();
    }
    
    public FunctionExpression(Variables paramVariables, Expression[] paramArrayOfExpression, String paramString)
      throws Exception
    {
      this.mVariables = paramVariables;
      this.mParaExps = paramArrayOfExpression;
      this.mFunName = paramString;
      parseFunction(paramString);
    }
    
    private void parseFunction(String paramString)
      throws Exception
    {
      Object localObject = (Expression.FunctionImpl)sFunMap.get(paramString);
      boolean bool1 = true;
      boolean bool2;
      if (localObject != null) {
        bool2 = true;
      } else {
        bool2 = false;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("invalid function:");
      localStringBuilder.append(paramString);
      Utils.asserts(bool2, localStringBuilder.toString());
      this.mFun = ((Expression.FunctionImpl)localObject);
      if (this.mParaExps.length >= ((Expression.FunctionImpl)localObject).params) {
        bool2 = bool1;
      } else {
        bool2 = false;
      }
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("parameters count not matching for function: ");
      ((StringBuilder)localObject).append(paramString);
      Utils.asserts(bool2, ((StringBuilder)localObject).toString());
    }
    
    public static void registerFunction(String paramString, Expression.FunctionImpl paramFunctionImpl)
    {
      if ((Expression.FunctionImpl)sFunMap.put(paramString, paramFunctionImpl) != null)
      {
        paramFunctionImpl = new StringBuilder();
        paramFunctionImpl.append("duplicated function name registation: ");
        paramFunctionImpl.append(paramString);
        Log.w("Expression", paramFunctionImpl.toString());
      }
    }
    
    public static void removeFunction(String paramString, Expression.FunctionImpl paramFunctionImpl)
    {
      sFunMap.remove(paramString);
    }
    
    public static void resetFunctions()
    {
      Iterator localIterator = sFunMap.entrySet().iterator();
      while (localIterator.hasNext()) {
        ((Expression.FunctionImpl)((Map.Entry)localIterator.next()).getValue()).reset();
      }
    }
    
    public void accept(ExpressionVisitor paramExpressionVisitor)
    {
      paramExpressionVisitor.visit(this);
      for (int i = 0;; i++)
      {
        Expression[] arrayOfExpression = this.mParaExps;
        if (i >= arrayOfExpression.length) {
          break;
        }
        arrayOfExpression[i].accept(paramExpressionVisitor);
      }
    }
    
    public double evaluate()
    {
      return this.mFun.evaluate(this.mParaExps, this.mVariables);
    }
    
    public JSONArray evaluateJsonArray()
    {
      return this.mFun.evaluateJsonArray(this.mParaExps, this.mVariables);
    }
    
    public JSONObject evaluateJsonObject()
    {
      return this.mFun.evaluateJsonObject(this.mParaExps, this.mVariables);
    }
    
    public String evaluateStr()
    {
      return this.mFun.evaluateStr(this.mParaExps, this.mVariables);
    }
    
    public String getFunName()
    {
      return this.mFunName;
    }
  }
  
  public static abstract class FunctionImpl
  {
    public int params;
    
    public FunctionImpl(int paramInt)
    {
      this.params = paramInt;
    }
    
    public abstract double evaluate(Expression[] paramArrayOfExpression, Variables paramVariables);
    
    public JSONArray evaluateJsonArray(Expression[] paramArrayOfExpression, Variables paramVariables)
    {
      return null;
    }
    
    public JSONObject evaluateJsonObject(Expression[] paramArrayOfExpression, Variables paramVariables)
    {
      return null;
    }
    
    public abstract String evaluateStr(Expression[] paramArrayOfExpression, Variables paramVariables);
    
    public void reset() {}
  }
  
  static class JsonArrayVariableExpression
    extends Expression.VariableExpression
  {
    public JsonArrayVariableExpression(Variables paramVariables, String paramString)
    {
      super(paramString, false);
    }
    
    public double evaluate()
    {
      return 0.0D;
    }
    
    public JSONArray evaluateJsonArray()
    {
      Object localObject = this.mIndexedVar.get();
      if ((localObject instanceof JSONArray)) {
        return (JSONArray)localObject;
      }
      return super.evaluateJsonArray();
    }
    
    public String evaluateStr()
    {
      Object localObject = evaluateJsonArray();
      if (localObject != null) {
        localObject = ((JSONArray)localObject).toString();
      } else {
        localObject = null;
      }
      return localObject;
    }
    
    public boolean isNull()
    {
      return this.mIndexedVar.isNull();
    }
  }
  
  static class JsonObjectVariableExpression
    extends Expression.VariableExpression
  {
    public JsonObjectVariableExpression(Variables paramVariables, String paramString)
    {
      super(paramString, false);
    }
    
    public double evaluate()
    {
      return 0.0D;
    }
    
    public JSONObject evaluateJsonObject()
    {
      Object localObject = this.mIndexedVar.get();
      if ((localObject instanceof JSONObject)) {
        return (JSONObject)localObject;
      }
      return super.evaluateJsonObject();
    }
    
    public String evaluateStr()
    {
      Object localObject = evaluateJsonObject();
      if (localObject != null) {
        localObject = ((JSONObject)localObject).toString();
      } else {
        localObject = null;
      }
      return localObject;
    }
    
    public boolean isNull()
    {
      return this.mIndexedVar.isNull();
    }
  }
  
  static class NumberArrayVariableExpression
    extends Expression.ArrayVariableExpression
  {
    public NumberArrayVariableExpression(Variables paramVariables, String paramString, Expression paramExpression)
    {
      super(paramString, paramExpression);
    }
    
    public double evaluate()
    {
      return this.mIndexedVar.getArrDouble((int)this.mIndexExp.evaluate());
    }
    
    public String evaluateStr()
    {
      return Utils.doubleToString(evaluate());
    }
    
    public boolean isNull()
    {
      return this.mIndexedVar.isNull((int)this.mIndexExp.evaluate());
    }
  }
  
  public static class NumberExpression
    extends Expression
  {
    private String mString;
    private double mValue;
    
    public NumberExpression(double paramDouble)
    {
      this.mValue = paramDouble;
    }
    
    public NumberExpression(String paramString)
    {
      if (TextUtils.isEmpty(paramString))
      {
        Log.e("Expression", "invalid NumberExpression: null");
        return;
      }
      try
      {
        if ((paramString.length() > 2) && (paramString.indexOf("0x") == 0)) {
          this.mValue = Long.parseLong(paramString.substring(2), 16);
        } else {
          this.mValue = Double.parseDouble(paramString);
        }
      }
      catch (NumberFormatException localNumberFormatException)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("invalid NumberExpression:");
        localStringBuilder.append(paramString);
        Log.e("Expression", localStringBuilder.toString());
      }
    }
    
    public double evaluate()
    {
      return this.mValue;
    }
    
    public String evaluateStr()
    {
      if (this.mString == null) {
        this.mString = Utils.doubleToString(this.mValue);
      }
      return this.mString;
    }
    
    public void setValue(double paramDouble)
    {
      this.mValue = paramDouble;
    }
  }
  
  static class NumberVariableExpression
    extends Expression.VariableExpression
  {
    public NumberVariableExpression(Variables paramVariables, String paramString)
    {
      super(paramString, true);
    }
    
    public double evaluate()
    {
      return this.mIndexedVar.getDouble();
    }
    
    public String evaluateStr()
    {
      return Utils.doubleToString(evaluate());
    }
    
    public boolean isNull()
    {
      return this.mIndexedVar.isNull();
    }
  }
  
  private static enum Ope
  {
    static
    {
      Ope localOpe1 = new Ope("ADD", 0);
      ADD = localOpe1;
      Ope localOpe2 = new Ope("MIN", 1);
      MIN = localOpe2;
      Ope localOpe3 = new Ope("MUL", 2);
      MUL = localOpe3;
      Ope localOpe4 = new Ope("DIV", 3);
      DIV = localOpe4;
      Ope localOpe5 = new Ope("MOD", 4);
      MOD = localOpe5;
      Ope localOpe6 = new Ope("BIT_AND", 5);
      BIT_AND = localOpe6;
      Ope localOpe7 = new Ope("BIT_OR", 6);
      BIT_OR = localOpe7;
      Ope localOpe8 = new Ope("BIT_XOR", 7);
      BIT_XOR = localOpe8;
      Ope localOpe9 = new Ope("BIT_NOT", 8);
      BIT_NOT = localOpe9;
      Ope localOpe10 = new Ope("BIT_LSHIFT", 9);
      BIT_LSHIFT = localOpe10;
      Ope localOpe11 = new Ope("BIT_RSHIFT", 10);
      BIT_RSHIFT = localOpe11;
      Ope localOpe12 = new Ope("NOT", 11);
      NOT = localOpe12;
      Ope localOpe13 = new Ope("EQ", 12);
      EQ = localOpe13;
      Ope localOpe14 = new Ope("NEQ", 13);
      NEQ = localOpe14;
      Ope localOpe15 = new Ope("AND", 14);
      AND = localOpe15;
      Ope localOpe16 = new Ope("OR", 15);
      OR = localOpe16;
      Ope localOpe17 = new Ope("GT", 16);
      GT = localOpe17;
      Ope localOpe18 = new Ope("GE", 17);
      GE = localOpe18;
      Ope localOpe19 = new Ope("LT", 18);
      LT = localOpe19;
      Ope localOpe20 = new Ope("LE", 19);
      LE = localOpe20;
      Ope localOpe21 = new Ope("INVALID", 20);
      INVALID = localOpe21;
      $VALUES = new Ope[] { localOpe1, localOpe2, localOpe3, localOpe4, localOpe5, localOpe6, localOpe7, localOpe8, localOpe9, localOpe10, localOpe11, localOpe12, localOpe13, localOpe14, localOpe15, localOpe16, localOpe17, localOpe18, localOpe19, localOpe20, localOpe21 };
    }
    
    private Ope() {}
  }
  
  private static class OpeInfo
  {
    private static final int OPE_SIZE;
    private static final int[] mOpePar;
    private static final int[] mOpePriority = { 4, 4, 3, 3, 3, 8, 9, 10, 2, 5, 5, 2, 7, 7, 11, 12, 6, 6, 6, 6 };
    private static final String[] mOpes;
    public int participants;
    public int priority;
    public String str;
    public boolean unary;
    
    static
    {
      mOpePar = new int[] { 2, 1, 2, 2, 2, 2, 2, 2, 1, 2, 2, 1, 2, 2, 2, 2, 2, 2, 2, 2 };
      String[] arrayOfString = new String[20];
      arrayOfString[0] = "+";
      arrayOfString[1] = "-";
      arrayOfString[2] = "*";
      arrayOfString[3] = "/";
      arrayOfString[4] = "%";
      arrayOfString[5] = "&";
      arrayOfString[6] = "|";
      arrayOfString[7] = "^";
      arrayOfString[8] = "~";
      arrayOfString[9] = "{{";
      arrayOfString[10] = "}}";
      arrayOfString[11] = "!";
      arrayOfString[12] = "==";
      arrayOfString[13] = "!=";
      arrayOfString[14] = "**";
      arrayOfString[15] = "||";
      arrayOfString[16] = "}";
      arrayOfString[17] = "}=";
      arrayOfString[18] = "{";
      arrayOfString[19] = "{=";
      mOpes = arrayOfString;
      OPE_SIZE = arrayOfString.length;
    }
    
    public static OpeInfo getOpeInfo(int paramInt)
    {
      OpeInfo localOpeInfo = new OpeInfo();
      localOpeInfo.priority = mOpePriority[paramInt];
      localOpeInfo.participants = mOpePar[paramInt];
      localOpeInfo.str = mOpes[paramInt];
      return localOpeInfo;
    }
    
    public static class Parser
    {
      private int[] mFlags = new int[Expression.OpeInfo.OPE_SIZE];
      private int mMatch;
      private int mStep;
      
      public boolean accept(char paramChar, boolean paramBoolean)
      {
        if (paramBoolean)
        {
          for (i = 0; i < Expression.OpeInfo.OPE_SIZE; i++) {
            this.mFlags[i] = 0;
          }
          this.mStep = 0;
          this.mMatch = -1;
        }
        int i = 0;
        int j = i;
        while (i < Expression.OpeInfo.OPE_SIZE)
        {
          if (this.mFlags[i] != -1)
          {
            String str = Expression.OpeInfo.mOpes[i];
            int k = str.length();
            int m = this.mStep;
            if ((k > m) && (str.charAt(m) == paramChar))
            {
              if (this.mStep == str.length() - 1) {
                j = 1;
              } else {
                j = 0;
              }
              this.mFlags[i] = 0;
              if (j != 0) {
                this.mMatch = i;
              }
              j = 1;
            }
            else
            {
              this.mFlags[i] = -1;
            }
          }
          i++;
        }
        if (j != 0) {
          this.mStep += 1;
        }
        return j;
      }
      
      public Expression.Ope getMatch()
      {
        Expression.Ope localOpe;
        if (this.mMatch == -1) {
          localOpe = Expression.Ope.INVALID;
        } else {
          localOpe = Expression.Ope.values()[this.mMatch];
        }
        return localOpe;
      }
    }
  }
  
  static class StringArrayVariableExpression
    extends Expression.ArrayVariableExpression
  {
    public StringArrayVariableExpression(Variables paramVariables, String paramString, Expression paramExpression)
    {
      super(paramString, paramExpression);
    }
    
    public double evaluate()
    {
      String str = evaluateStr();
      if (!TextUtils.isEmpty(str)) {}
      try
      {
        double d = Double.parseDouble(str);
        return d;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        label19:
        break label19;
      }
      return 0.0D;
    }
    
    public String evaluateStr()
    {
      return this.mIndexedVar.getArrString((int)this.mIndexExp.evaluate());
    }
    
    public boolean isNull()
    {
      return this.mIndexedVar.isNull((int)this.mIndexExp.evaluate());
    }
  }
  
  static class StringExpression
    extends Expression
  {
    private String mValue;
    
    public StringExpression(String paramString)
    {
      this.mValue = paramString;
    }
    
    public double evaluate()
    {
      if (!TextUtils.isEmpty(this.mValue)) {}
      try
      {
        double d = Double.parseDouble(this.mValue);
        return d;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        label20:
        break label20;
      }
      return 0.0D;
    }
    
    public String evaluateStr()
    {
      return this.mValue;
    }
  }
  
  static class StringVariableExpression
    extends Expression.VariableExpression
  {
    public StringVariableExpression(Variables paramVariables, String paramString)
    {
      super(paramString, false);
    }
    
    public double evaluate()
    {
      String str = evaluateStr();
      if (!TextUtils.isEmpty(str)) {}
      try
      {
        double d = Double.parseDouble(str);
        return d;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        label19:
        break label19;
      }
      return 0.0D;
    }
    
    public String evaluateStr()
    {
      return this.mIndexedVar.getString();
    }
    
    public boolean isNull()
    {
      return this.mIndexedVar.isNull();
    }
  }
  
  private static class Tokenizer
  {
    private static final int BRACKET_MODE_NONE = 0;
    private static final int BRACKET_MODE_ROUND = 1;
    private static final int BRACKET_MODE_SQUARE = 2;
    private Expression.OpeInfo.Parser mOpeParser = new Expression.OpeInfo.Parser();
    private int mPos;
    private String mString;
    
    public Tokenizer(String paramString)
    {
      this.mString = paramString;
      reset();
    }
    
    public Token getToken()
    {
      Object localObject1 = TokenType.INVALID;
      int i = this.mString.length();
      int j = this.mPos;
      int k = -1;
      int m = 0;
      int n = 0;
      int i1 = 0;
      label203:
      int i8;
      for (int i2 = 0; j < i; i2 = i8)
      {
        int i3 = this.mString.charAt(j);
        int i4 = n;
        if (n == 0)
        {
          if ((i3 == 35) || (i3 == 64) || (i3 == 36)) {
            break label534;
          }
          if (i3 == 39)
          {
            i1 = j + 1;
            i2 = i1;
            j = 0;
            while (i2 < i)
            {
              i4 = this.mString.charAt(i2);
              if ((j == 0) && (i4 == 39)) {
                break;
              }
              if (i4 == 92) {
                j = 1;
              } else {
                j = 0;
              }
              i2++;
            }
            this.mPos = (i2 + 1);
            return new Token(TokenType.STR, this.mString.substring(i1, i2).replace("\\'", "'"));
          }
          if (i3 != 40) {
            break label203;
          }
          i4 = 1;
        }
        label317:
        do
        {
          for (;;)
          {
            i5 = i4;
            break label713;
            if (i3 != 91) {
              break;
            }
            i4 = 2;
          }
          if (Expression.isDigitCharStart(i3))
          {
            i4 = j + 1;
            i2 = i4;
            i1 = j;
            if (this.mString.charAt(j) == '0')
            {
              i2 = i4;
              i1 = j;
              if (i4 < i)
              {
                i2 = i4;
                i1 = j;
                if (this.mString.charAt(i4) == 'x') {
                  break label317;
                }
              }
            }
            while (i2 < i)
            {
              i4 = i2;
              j = i1;
              if (!Expression.isDigitCharRest(this.mString.charAt(i2))) {
                break;
              }
              i2 = i4 + 1;
              i1 = j;
            }
            this.mPos = i2;
            return new Token(TokenType.NUM, this.mString.substring(i1, i2));
          }
          if (Expression.isFunctionCharStart(i3))
          {
            for (i2 = j + 1; (i2 < i) && (Expression.isFunctionCharRest(this.mString.charAt(i2))); i2++) {}
            this.mPos = i2;
            return new Token(TokenType.FUN, this.mString.substring(j, i2));
          }
          i4 = n;
        } while (!this.mOpeParser.accept(i3, true));
        for (i4 = j + 1; (i4 < i) && (this.mOpeParser.accept(this.mString.charAt(i4), false)); i4++) {}
        Object localObject2 = this.mOpeParser.getMatch();
        int i5 = n;
        if (localObject2 != Expression.Ope.INVALID)
        {
          this.mPos = i4;
          return new Token(TokenType.OPE, this.mString.substring(j, i4), (Expression.Ope)localObject2);
          label534:
          i2 = j + 1;
          if ((i2 < i) && (this.mString.charAt(i2) == '$')) {
            i2 = 2;
          } else {
            i2 = 1;
          }
          i1 = j + i2;
          for (j = i1; (j < i) && (Expression.isVariableChar(this.mString.charAt(j))); j++) {}
          if (j == i1)
          {
            localObject1 = new StringBuilder();
            ((StringBuilder)localObject1).append("invalid variable name:");
            ((StringBuilder)localObject1).append(this.mString);
            Log.e("Expression", ((StringBuilder)localObject1).toString());
            return null;
          }
          this.mPos = j;
          localObject1 = TokenType.VAR_NUM;
          if (i3 == 64) {
            localObject1 = TokenType.VAR_STR;
          } else if (i3 == 36) {
            if (i2 == 1) {
              localObject1 = TokenType.VAR_JSON_OBJ;
            } else {
              localObject1 = TokenType.VAR_JSON_ARR;
            }
          }
          return new Token((TokenType)localObject1, this.mString.substring(i1, j));
        }
        label713:
        Object localObject3 = localObject1;
        int i6 = k;
        n = m;
        int i7 = i1;
        i8 = i2;
        if (i5 != 0)
        {
          localObject2 = localObject1;
          int i9 = k;
          k = i1;
          i4 = i2;
          int i10;
          if (m == 0)
          {
            if (i5 != 1)
            {
              if (i5 == 2)
              {
                localObject1 = TokenType.BRACKET_SQUARE;
                i2 = 93;
                i1 = 91;
              }
            }
            else
            {
              localObject1 = TokenType.BRACKET_ROUND;
              i2 = 41;
              i1 = 40;
            }
            i10 = j + 1;
            i4 = i2;
            k = i1;
            localObject2 = localObject1;
          }
          if (i3 == k)
          {
            n = m + 1;
            localObject3 = localObject2;
            i6 = i10;
            i7 = k;
            i8 = i4;
          }
          else
          {
            localObject3 = localObject2;
            i6 = i10;
            n = m;
            i7 = k;
            i8 = i4;
            if (i3 == i4)
            {
              i2 = m - 1;
              localObject3 = localObject2;
              i6 = i10;
              n = i2;
              i7 = k;
              i8 = i4;
              if (i2 == 0)
              {
                this.mPos = (j + 1);
                return new Token((TokenType)localObject2, this.mString.substring(i10, j));
              }
            }
          }
        }
        j++;
        localObject1 = localObject3;
        k = i6;
        m = n;
        n = i5;
        i1 = i7;
      }
      if (m != 0)
      {
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append("mismatched bracket:");
        ((StringBuilder)localObject1).append(this.mString);
        Log.e("Expression", ((StringBuilder)localObject1).toString());
      }
      return null;
    }
    
    public void reset()
    {
      this.mPos = 0;
    }
    
    public static class Token
    {
      public Expression.OpeInfo info;
      public Expression.Ope op;
      public String token;
      public Expression.Tokenizer.TokenType type = Expression.Tokenizer.TokenType.INVALID;
      
      public Token(Expression.Tokenizer.TokenType paramTokenType, String paramString)
      {
        this.op = Expression.Ope.INVALID;
        this.type = paramTokenType;
        this.token = paramString;
      }
      
      public Token(Expression.Tokenizer.TokenType paramTokenType, String paramString, Expression.Ope paramOpe)
      {
        Expression.Ope localOpe = Expression.Ope.ADD;
        this.type = paramTokenType;
        this.token = paramString;
        this.op = paramOpe;
        this.info = Expression.OpeInfo.getOpeInfo(paramOpe.ordinal());
      }
    }
    
    public static enum TokenType
    {
      static
      {
        TokenType localTokenType1 = new TokenType("INVALID", 0);
        INVALID = localTokenType1;
        TokenType localTokenType2 = new TokenType("VAR_NUM", 1);
        VAR_NUM = localTokenType2;
        TokenType localTokenType3 = new TokenType("VAR_STR", 2);
        VAR_STR = localTokenType3;
        TokenType localTokenType4 = new TokenType("VAR_JSON_OBJ", 3);
        VAR_JSON_OBJ = localTokenType4;
        TokenType localTokenType5 = new TokenType("VAR_JSON_ARR", 4);
        VAR_JSON_ARR = localTokenType5;
        TokenType localTokenType6 = new TokenType("NUM", 5);
        NUM = localTokenType6;
        TokenType localTokenType7 = new TokenType("STR", 6);
        STR = localTokenType7;
        TokenType localTokenType8 = new TokenType("OPE", 7);
        OPE = localTokenType8;
        TokenType localTokenType9 = new TokenType("FUN", 8);
        FUN = localTokenType9;
        TokenType localTokenType10 = new TokenType("BRACKET_ROUND", 9);
        BRACKET_ROUND = localTokenType10;
        TokenType localTokenType11 = new TokenType("BRACKET_SQUARE", 10);
        BRACKET_SQUARE = localTokenType11;
        $VALUES = new TokenType[] { localTokenType1, localTokenType2, localTokenType3, localTokenType4, localTokenType5, localTokenType6, localTokenType7, localTokenType8, localTokenType9, localTokenType10, localTokenType11 };
      }
      
      private TokenType() {}
    }
  }
  
  static class UnaryExpression
    extends Expression
  {
    private Expression mExp;
    private Expression.Ope mOpe;
    
    public UnaryExpression(Expression paramExpression, Expression.Ope paramOpe)
    {
      Expression.Ope localOpe = Expression.Ope.INVALID;
      this.mExp = paramExpression;
      this.mOpe = paramOpe;
      if (paramOpe == localOpe)
      {
        paramExpression = new StringBuilder();
        paramExpression.append("UnaryExpression: invalid operator:");
        paramExpression.append(paramOpe);
        Log.e("Expression", paramExpression.toString());
      }
    }
    
    public void accept(ExpressionVisitor paramExpressionVisitor)
    {
      paramExpressionVisitor.visit(this);
      this.mExp.accept(paramExpressionVisitor);
    }
    
    public double evaluate()
    {
      int i = Expression.1.$SwitchMap$com$miui$maml$data$Expression$Ope[this.mOpe.ordinal()];
      double d = 0.0D;
      if (i != 1)
      {
        if (i != 2)
        {
          if (i != 3)
          {
            Log.e("Expression", "fail to evalute UnaryExpression, invalid operator");
            return this.mExp.evaluate();
          }
          return (int)this.mExp.evaluate();
        }
        if (this.mExp.evaluate() <= 0.0D) {
          d = 1.0D;
        }
        return d;
      }
      return 0.0D - this.mExp.evaluate();
    }
    
    public String evaluateStr()
    {
      return Utils.doubleToString(evaluate());
    }
    
    public boolean isNull()
    {
      return this.mExp.isNull();
    }
  }
  
  static abstract class VariableExpression
    extends Expression
  {
    protected IndexedVariable mIndexedVar;
    protected String mName;
    
    public VariableExpression(Variables paramVariables, String paramString, boolean paramBoolean)
    {
      this.mName = paramString;
      this.mIndexedVar = new IndexedVariable(paramString, paramVariables, paramBoolean);
    }
    
    public int getIndex()
    {
      return this.mIndexedVar.getIndex();
    }
    
    public String getName()
    {
      return this.mName;
    }
    
    public int getVersion()
    {
      return this.mIndexedVar.getVersion();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.data.Expression
 * JD-Core Version:    0.7.0.1
 */