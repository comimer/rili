package com.miui.maml.data;

import java.util.AbstractCollection;
import java.util.HashSet;
import org.json.JSONArray;
import org.json.JSONObject;

public class RootExpression
  extends Expression
{
  public static final String LOG_TAG = "RootExression";
  private boolean mAlwaysEvaluate;
  private double mDoubleValue;
  private Expression mExp;
  private boolean mIsJsonArrayInit = false;
  private boolean mIsJsonObjectInit = false;
  private boolean mIsNumInit = false;
  private boolean mIsStrInit = false;
  private JSONArray mJsonArrayValue;
  private JSONObject mJsonObjectValue;
  private String mStringValue;
  private VarVersionVisitor mVarVersionVisitor = null;
  private Variables mVars;
  private HashSet<VarVersion> mVersionSet = new HashSet();
  private VarVersion[] mVersions;
  
  public RootExpression(Variables paramVariables, Expression paramExpression)
  {
    this.mVars = paramVariables;
    this.mExp = paramExpression;
  }
  
  public void accept(ExpressionVisitor paramExpressionVisitor) {}
  
  public void addVarVersion(VarVersion paramVarVersion)
  {
    this.mVersionSet.add(paramVarVersion);
  }
  
  public double evaluate()
  {
    boolean bool = this.mIsNumInit;
    int i = 1;
    Object localObject;
    if (!bool)
    {
      this.mDoubleValue = this.mExp.evaluate();
      if (this.mVarVersionVisitor == null)
      {
        localObject = new VarVersionVisitor(this);
        this.mVarVersionVisitor = ((VarVersionVisitor)localObject);
        this.mExp.accept((ExpressionVisitor)localObject);
        if (this.mVersionSet.size() <= 0)
        {
          this.mVersions = null;
        }
        else
        {
          localObject = new VarVersion[this.mVersionSet.size()];
          this.mVersions = ((VarVersion[])localObject);
          this.mVersionSet.toArray((Object[])localObject);
        }
      }
      this.mIsNumInit = true;
    }
    else
    {
      bool = this.mAlwaysEvaluate;
      int j = 0;
      if (!bool) {
        if (this.mVersions != null)
        {
          int k;
          for (i = 0;; i = k)
          {
            localObject = this.mVersions;
            if (j >= localObject.length) {
              break;
            }
            localObject = localObject[j];
            k = i;
            if (localObject != null)
            {
              int m = ((VarVersion)localObject).getVer(this.mVars);
              k = i;
              if (((VarVersion)localObject).mVersion != m)
              {
                ((VarVersion)localObject).mVersion = m;
                k = 1;
              }
            }
            j++;
          }
        }
        else
        {
          i = 0;
        }
      }
      if (i != 0) {
        this.mDoubleValue = this.mExp.evaluate();
      }
    }
    return this.mDoubleValue;
  }
  
  public JSONArray evaluateJsonArray()
  {
    boolean bool = this.mIsJsonArrayInit;
    int i = 1;
    Object localObject;
    if (!bool)
    {
      this.mJsonArrayValue = this.mExp.evaluateJsonArray();
      if (this.mVarVersionVisitor == null)
      {
        localObject = new VarVersionVisitor(this);
        this.mVarVersionVisitor = ((VarVersionVisitor)localObject);
        this.mExp.accept((ExpressionVisitor)localObject);
        localObject = new VarVersion[this.mVersionSet.size()];
        this.mVersions = ((VarVersion[])localObject);
        this.mVersionSet.toArray((Object[])localObject);
      }
      this.mIsJsonArrayInit = true;
    }
    else
    {
      bool = this.mAlwaysEvaluate;
      int j = 0;
      if (!bool) {
        if (this.mVersions != null)
        {
          int k;
          for (i = 0;; i = k)
          {
            localObject = this.mVersions;
            if (j >= localObject.length) {
              break;
            }
            localObject = localObject[j];
            k = i;
            if (localObject != null)
            {
              int m = ((VarVersion)localObject).getVer(this.mVars);
              k = i;
              if (((VarVersion)localObject).mVersion != m)
              {
                ((VarVersion)localObject).mVersion = m;
                k = 1;
              }
            }
            j++;
          }
        }
        else
        {
          i = 0;
        }
      }
      if (i != 0) {
        this.mJsonArrayValue = this.mExp.evaluateJsonArray();
      }
    }
    return this.mJsonArrayValue;
  }
  
  public JSONObject evaluateJsonObject()
  {
    boolean bool = this.mIsJsonObjectInit;
    int i = 1;
    Object localObject;
    if (!bool)
    {
      this.mJsonObjectValue = this.mExp.evaluateJsonObject();
      if (this.mVarVersionVisitor == null)
      {
        localObject = new VarVersionVisitor(this);
        this.mVarVersionVisitor = ((VarVersionVisitor)localObject);
        this.mExp.accept((ExpressionVisitor)localObject);
        localObject = new VarVersion[this.mVersionSet.size()];
        this.mVersions = ((VarVersion[])localObject);
        this.mVersionSet.toArray((Object[])localObject);
      }
      this.mIsJsonObjectInit = true;
    }
    else
    {
      bool = this.mAlwaysEvaluate;
      int j = 0;
      if (!bool) {
        if (this.mVersions != null)
        {
          int k;
          for (i = 0;; i = k)
          {
            localObject = this.mVersions;
            if (j >= localObject.length) {
              break;
            }
            localObject = localObject[j];
            k = i;
            if (localObject != null)
            {
              int m = ((VarVersion)localObject).getVer(this.mVars);
              k = i;
              if (((VarVersion)localObject).mVersion != m)
              {
                ((VarVersion)localObject).mVersion = m;
                k = 1;
              }
            }
            j++;
          }
        }
        else
        {
          i = 0;
        }
      }
      if (i != 0) {
        this.mJsonObjectValue = this.mExp.evaluateJsonObject();
      }
    }
    return this.mJsonObjectValue;
  }
  
  public String evaluateStr()
  {
    boolean bool = this.mIsStrInit;
    int i = 1;
    Object localObject;
    if (!bool)
    {
      this.mStringValue = this.mExp.evaluateStr();
      if (this.mVarVersionVisitor == null)
      {
        localObject = new VarVersionVisitor(this);
        this.mVarVersionVisitor = ((VarVersionVisitor)localObject);
        this.mExp.accept((ExpressionVisitor)localObject);
        localObject = new VarVersion[this.mVersionSet.size()];
        this.mVersions = ((VarVersion[])localObject);
        this.mVersionSet.toArray((Object[])localObject);
      }
      this.mIsStrInit = true;
    }
    else
    {
      bool = this.mAlwaysEvaluate;
      int j = 0;
      if (!bool) {
        if (this.mVersions != null)
        {
          int k;
          for (i = 0;; i = k)
          {
            localObject = this.mVersions;
            if (j >= localObject.length) {
              break;
            }
            localObject = localObject[j];
            k = i;
            if (localObject != null)
            {
              int m = ((VarVersion)localObject).getVer(this.mVars);
              k = i;
              if (((VarVersion)localObject).mVersion != m)
              {
                ((VarVersion)localObject).mVersion = m;
                k = 1;
              }
            }
            j++;
          }
        }
        else
        {
          i = 0;
        }
      }
      if (i != 0) {
        this.mStringValue = this.mExp.evaluateStr();
      }
    }
    return this.mStringValue;
  }
  
  public boolean isNull()
  {
    return this.mExp.isNull();
  }
  
  public static class VarVersion
  {
    int mIndex;
    private boolean mIsNumber;
    int mVersion;
    
    public VarVersion(int paramInt1, int paramInt2, boolean paramBoolean)
    {
      this.mIndex = paramInt1;
      this.mVersion = paramInt2;
      this.mIsNumber = paramBoolean;
    }
    
    public boolean equals(Object paramObject)
    {
      boolean bool1 = paramObject instanceof VarVersion;
      boolean bool2 = false;
      boolean bool3 = bool2;
      if (bool1)
      {
        paramObject = (VarVersion)paramObject;
        bool3 = bool2;
        if (paramObject.mIsNumber == this.mIsNumber)
        {
          bool3 = bool2;
          if (paramObject.mIndex == this.mIndex) {
            bool3 = true;
          }
        }
      }
      return bool3;
    }
    
    public int getVer(Variables paramVariables)
    {
      return paramVariables.getVer(this.mIndex, this.mIsNumber);
    }
    
    public int hashCode()
    {
      int i;
      if (this.mIsNumber) {
        i = this.mIndex;
      } else {
        i = -this.mIndex - 1;
      }
      return i;
    }
  }
  
  private static class VarVersionVisitor
    extends ExpressionVisitor
  {
    private RootExpression mRoot;
    
    public VarVersionVisitor(RootExpression paramRootExpression)
    {
      this.mRoot = paramRootExpression;
    }
    
    public void visit(Expression paramExpression)
    {
      if ((paramExpression instanceof Expression.VariableExpression))
      {
        Expression.VariableExpression localVariableExpression = (Expression.VariableExpression)paramExpression;
        localVariableExpression.evaluate();
        this.mRoot.addVarVersion(new RootExpression.VarVersion(localVariableExpression.getIndex(), localVariableExpression.getVersion(), paramExpression instanceof Expression.NumberVariableExpression));
      }
      else if ((paramExpression instanceof Expression.FunctionExpression))
      {
        paramExpression = ((Expression.FunctionExpression)paramExpression).getFunName();
        if (("rand".equals(paramExpression)) || ("eval".equals(paramExpression)) || ("preciseeval".equals(paramExpression)) || ("newJsonObject".equals(paramExpression)) || ("newJsonArray".equals(paramExpression))) {
          RootExpression.access$002(this.mRoot, true);
        }
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.data.RootExpression
 * JD-Core Version:    0.7.0.1
 */