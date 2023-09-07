package com.miui.maml.data;

import android.text.TextUtils;
import com.miui.maml.CommandTrigger;
import com.miui.maml.ScreenContext;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.elements.ScreenElement;
import com.miui.maml.util.Utils;
import com.miui.maml.util.Utils.XmlTraverseListener;
import java.util.ArrayList;
import org.w3c.dom.Element;

public abstract class VariableBinder
{
  private String mDependency;
  protected boolean mFinished;
  protected String mName;
  protected boolean mPaused;
  protected boolean mQueryAtStart = true;
  private ContentProviderBinder.QueryCompleteListener mQueryCompletedListener;
  protected ScreenElementRoot mRoot;
  protected CommandTrigger mTrigger;
  protected ArrayList<Variable> mVariables = new ArrayList();
  
  public VariableBinder(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    this.mRoot = paramScreenElementRoot;
    if (paramElement != null)
    {
      this.mName = paramElement.getAttribute("name");
      this.mDependency = paramElement.getAttribute("dependency");
      this.mQueryAtStart = ("false".equalsIgnoreCase(paramElement.getAttribute("queryAtStart")) ^ true);
      this.mTrigger = CommandTrigger.fromParentElement(paramElement, this.mRoot);
    }
  }
  
  public final void accept(VariableBinderVisitor paramVariableBinderVisitor)
  {
    paramVariableBinderVisitor.visit(this);
  }
  
  protected void addVariable(Variable paramVariable)
  {
    this.mVariables.add(paramVariable);
  }
  
  public void finish()
  {
    CommandTrigger localCommandTrigger = this.mTrigger;
    if (localCommandTrigger != null) {
      localCommandTrigger.finish();
    }
    this.mFinished = true;
  }
  
  protected ScreenContext getContext()
  {
    return this.mRoot.getContext();
  }
  
  public String getDependency()
  {
    return this.mDependency;
  }
  
  public String getName()
  {
    return this.mName;
  }
  
  public Variables getVariables()
  {
    return this.mRoot.getVariables();
  }
  
  public void init()
  {
    this.mFinished = false;
    this.mPaused = false;
    CommandTrigger localCommandTrigger = this.mTrigger;
    if (localCommandTrigger != null) {
      localCommandTrigger.init();
    }
    if ((TextUtils.isEmpty(getDependency())) && (this.mQueryAtStart)) {
      startQuery();
    }
  }
  
  protected void loadVariables(Element paramElement)
  {
    Utils.traverseXmlElementChildren(paramElement, "Variable", new Utils.XmlTraverseListener()
    {
      public void onChild(Element paramAnonymousElement)
      {
        paramAnonymousElement = VariableBinder.this.onLoadVariable(paramAnonymousElement);
        if (paramAnonymousElement != null) {
          VariableBinder.this.mVariables.add(paramAnonymousElement);
        }
      }
    });
  }
  
  protected Variable onLoadVariable(Element paramElement)
  {
    return null;
  }
  
  protected final void onUpdateComplete()
  {
    CommandTrigger localCommandTrigger = this.mTrigger;
    if (localCommandTrigger != null) {
      localCommandTrigger.perform();
    }
    if ((this.mQueryCompletedListener != null) && (!TextUtils.isEmpty(this.mName))) {
      this.mQueryCompletedListener.onQueryCompleted(this.mName);
    }
    this.mRoot.requestUpdate();
  }
  
  public void pause()
  {
    CommandTrigger localCommandTrigger = this.mTrigger;
    if (localCommandTrigger != null) {
      localCommandTrigger.pause();
    }
    this.mPaused = true;
  }
  
  public void refresh() {}
  
  public void resume()
  {
    CommandTrigger localCommandTrigger = this.mTrigger;
    if (localCommandTrigger != null) {
      localCommandTrigger.resume();
    }
    this.mPaused = false;
  }
  
  public void setQueryCompleteListener(ContentProviderBinder.QueryCompleteListener paramQueryCompleteListener)
  {
    this.mQueryCompletedListener = paramQueryCompleteListener;
  }
  
  public void startQuery() {}
  
  public void tick() {}
  
  public static class TypedValue
  {
    public static final int BITMAP = 7;
    public static final int DOUBLE = 6;
    public static final int FLOAT = 5;
    public static final int INT = 3;
    public static final int LONG = 4;
    public static final int NUM_ARR = 8;
    public static final int STRING = 2;
    public static final int STR_ARR = 9;
    public static final int TYPE_BASE = 1000;
    public String mName;
    public int mType;
    public String mTypeStr;
    
    public TypedValue(String paramString1, String paramString2)
    {
      initInner(paramString1, paramString2);
    }
    
    public TypedValue(Element paramElement)
    {
      if (paramElement != null)
      {
        initInner(paramElement.getAttribute("name"), paramElement.getAttribute("type"));
        return;
      }
      throw new NullPointerException("node is null");
    }
    
    private void initInner(String paramString1, String paramString2)
    {
      this.mName = paramString1;
      this.mTypeStr = paramString2;
      this.mType = parseType(paramString2);
    }
    
    public boolean isArray()
    {
      int i = this.mType;
      boolean bool;
      if ((i != 8) && (i != 9)) {
        bool = false;
      } else {
        bool = true;
      }
      return bool;
    }
    
    public boolean isNumber()
    {
      int i = this.mType;
      boolean bool;
      if ((i >= 3) && (i <= 6)) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    protected int parseType(String paramString)
    {
      if ("string".equalsIgnoreCase(paramString)) {
        return 2;
      }
      if ((!"double".equalsIgnoreCase(paramString)) && (!"number".equalsIgnoreCase(paramString)))
      {
        if ("float".equalsIgnoreCase(paramString)) {
          return 5;
        }
        if ((!"int".equalsIgnoreCase(paramString)) && (!"integer".equalsIgnoreCase(paramString)))
        {
          if ("long".equalsIgnoreCase(paramString)) {
            return 4;
          }
          if ("bitmap".equalsIgnoreCase(paramString)) {
            return 7;
          }
          if ("number[]".equalsIgnoreCase(paramString)) {
            return 8;
          }
          if ("string[]".equalsIgnoreCase(paramString)) {
            return 9;
          }
          return 6;
        }
        return 3;
      }
      return 6;
    }
  }
  
  public static class Variable
    extends VariableBinder.TypedValue
  {
    public static final String TAG_NAME = "Variable";
    private Expression mArrayIndex;
    protected double mDefNumberValue;
    protected String mDefStringValue;
    protected IndexedVariable mVar;
    
    public Variable(String paramString1, String paramString2, Variables paramVariables)
    {
      super(paramString2);
      this.mVar = new IndexedVariable(this.mName, paramVariables, isNumber());
    }
    
    public Variable(Element paramElement, Variables paramVariables)
    {
      super();
      this.mArrayIndex = Expression.build(paramVariables, paramElement.getAttribute("arrIndex"));
      String str = this.mName;
      boolean bool;
      if ((isNumber()) && (this.mArrayIndex == null)) {
        bool = true;
      } else {
        bool = false;
      }
      this.mVar = new IndexedVariable(str, paramVariables, bool);
      this.mDefStringValue = paramElement.getAttribute("default");
      if (isNumber()) {
        if (TextUtils.isEmpty(this.mDefStringValue))
        {
          this.mDefStringValue = null;
          this.mDefNumberValue = 0.0D;
        }
        else
        {
          try
          {
            this.mDefNumberValue = Double.parseDouble(this.mDefStringValue);
          }
          catch (NumberFormatException paramElement)
          {
            this.mDefStringValue = null;
            this.mDefNumberValue = 0.0D;
          }
        }
      }
    }
    
    public double getNumber()
    {
      if (isNumber())
      {
        localExpression = this.mArrayIndex;
        if (localExpression != null) {
          return this.mVar.getArrDouble((int)localExpression.evaluate());
        }
        return this.mVar.getDouble();
      }
      Expression localExpression = this.mArrayIndex;
      if (localExpression != null) {
        return Utils.stringToDouble(this.mVar.getArrString((int)localExpression.evaluate()), 0.0D);
      }
      return Utils.stringToDouble(this.mVar.getString(), 0.0D);
    }
    
    public void set(double paramDouble)
    {
      Expression localExpression = this.mArrayIndex;
      if (localExpression != null) {
        this.mVar.setArr((int)localExpression.evaluate(), paramDouble);
      } else {
        this.mVar.set(paramDouble);
      }
    }
    
    public void set(Object paramObject)
    {
      double d1;
      if (isNumber())
      {
        d1 = 0.0D;
        if ((!(paramObject instanceof String)) || (TextUtils.isEmpty((String)paramObject))) {}
      }
      try
      {
        double d2 = Utils.parseDouble((String)paramObject);
        d1 = d2;
      }
      catch (NumberFormatException paramObject)
      {
        Object localObject;
        break label56;
      }
      if ((paramObject instanceof Number)) {
        d1 = ((Number)paramObject).doubleValue();
      }
      label56:
      paramObject = this.mArrayIndex;
      if (paramObject != null)
      {
        this.mVar.setArr((int)paramObject.evaluate(), d1);
      }
      else
      {
        this.mVar.set(d1);
        break label149;
        localObject = paramObject;
        if ((paramObject instanceof Number)) {
          localObject = Utils.numberToString((Number)paramObject);
        }
        paramObject = this.mArrayIndex;
        if (paramObject != null) {
          this.mVar.setArr((int)paramObject.evaluate(), localObject);
        } else {
          this.mVar.set(localObject);
        }
      }
      label149:
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.data.VariableBinder
 * JD-Core Version:    0.7.0.1
 */