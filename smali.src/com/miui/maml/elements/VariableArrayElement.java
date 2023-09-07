package com.miui.maml.elements;

import android.graphics.Canvas;
import android.text.TextUtils;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.data.Expression;
import com.miui.maml.data.IndexedVariable;
import com.miui.maml.data.Variables;
import com.miui.maml.util.Utils;
import com.miui.maml.util.Utils.XmlTraverseListener;
import java.util.ArrayList;
import java.util.HashSet;
import org.w3c.dom.Element;

public class VariableArrayElement
  extends ScreenElement
{
  public static final String TAG_NAME = "VarArray";
  private ArrayList<Item> mArray = new ArrayList();
  Object[] mData;
  private int mItemCount;
  private IndexedVariable mItemCountVar;
  Type mType;
  HashSet<VarObserver> mVarObserver;
  private ArrayList<Var> mVars = new ArrayList();
  
  public VariableArrayElement(Element paramElement, final ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    paramScreenElementRoot = Type.DOUBLE;
    this.mType = paramScreenElementRoot;
    this.mVarObserver = new HashSet();
    if (paramElement != null)
    {
      if ("string".equalsIgnoreCase(paramElement.getAttribute("type"))) {
        this.mType = Type.STRING;
      } else {
        this.mType = paramScreenElementRoot;
      }
      paramScreenElementRoot = getVariables();
      Utils.traverseXmlElementChildren(Utils.getChild(paramElement, "Vars"), "Var", new Utils.XmlTraverseListener()
      {
        public void onChild(Element paramAnonymousElement)
        {
          VariableArrayElement.this.mVars.add(new VariableArrayElement.Var(VariableArrayElement.this, paramScreenElementRoot, paramAnonymousElement));
        }
      });
      Utils.traverseXmlElementChildren(Utils.getChild(paramElement, "Items"), "Item", new Utils.XmlTraverseListener()
      {
        public void onChild(Element paramAnonymousElement)
        {
          VariableArrayElement.this.mArray.add(new VariableArrayElement.Item(VariableArrayElement.this, paramScreenElementRoot, paramAnonymousElement));
        }
      });
      if (this.mHasName)
      {
        paramElement = new StringBuilder();
        paramElement.append(this.mName);
        paramElement.append(".count");
        this.mItemCountVar = new IndexedVariable(paramElement.toString(), paramScreenElementRoot, true);
      }
    }
  }
  
  protected void doRender(Canvas paramCanvas) {}
  
  protected void doTick(long paramLong)
  {
    int i = this.mVars.size();
    for (int j = 0; j < i; j++) {
      ((Var)this.mVars.get(j)).tick();
    }
  }
  
  public int getItemSize()
  {
    return this.mItemCount;
  }
  
  public void init()
  {
    super.init();
    int i = this.mVars.size();
    int j = 0;
    for (int k = 0; k < i; k++) {
      ((Var)this.mVars.get(k)).init();
    }
    k = this.mArray.size();
    this.mItemCount = k;
    IndexedVariable localIndexedVariable = this.mItemCountVar;
    if (localIndexedVariable != null) {
      localIndexedVariable.set(k);
    }
    if (this.mData == null)
    {
      this.mData = new Object[this.mItemCount];
      for (k = j; k < this.mItemCount; k++) {
        this.mData[k] = ((Item)this.mArray.get(k)).mValue;
      }
    }
  }
  
  public void registerVarObserver(VarObserver paramVarObserver, boolean paramBoolean)
  {
    if (paramVarObserver == null) {
      return;
    }
    if (paramBoolean)
    {
      this.mVarObserver.add(paramVarObserver);
      paramVarObserver.onDataChange(this.mData);
    }
    else
    {
      this.mVarObserver.remove(paramVarObserver);
    }
  }
  
  private class Item
  {
    public Expression mExpression;
    public Object mValue;
    
    public Item(Variables paramVariables, Element paramElement)
    {
      if (paramElement != null)
      {
        this.mExpression = Expression.build(paramVariables, paramElement.getAttribute("expression"));
        paramVariables = paramElement.getAttribute("value");
        if ((VariableArrayElement.this.mType != VariableArrayElement.Type.DOUBLE) || (TextUtils.isEmpty(paramVariables))) {}
      }
      try
      {
        this.mValue = Double.valueOf(Double.parseDouble(paramVariables));
      }
      catch (NumberFormatException this$1)
      {
        label74:
        break label74;
      }
      this.mValue = paramVariables;
    }
    
    public Item(Object paramObject)
    {
      this.mValue = paramObject;
      this.mExpression = null;
    }
    
    public Double evaluate()
    {
      Expression localExpression = this.mExpression;
      Object localObject1 = null;
      Object localObject2 = null;
      if (localExpression != null)
      {
        if (localExpression.isNull()) {
          localObject1 = localObject2;
        } else {
          localObject1 = Double.valueOf(this.mExpression.evaluate());
        }
        return localObject1;
      }
      localObject2 = this.mValue;
      if ((localObject2 instanceof Number)) {
        localObject1 = Double.valueOf(((Number)localObject2).doubleValue());
      }
      return localObject1;
    }
    
    public String evaluateStr()
    {
      Object localObject = this.mExpression;
      if (localObject != null) {
        return ((Expression)localObject).evaluateStr();
      }
      localObject = this.mValue;
      if ((localObject instanceof String)) {
        localObject = (String)localObject;
      } else {
        localObject = null;
      }
      return localObject;
    }
    
    public boolean isExpression()
    {
      boolean bool;
      if (this.mExpression != null) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
  }
  
  public static enum Type
  {
    static
    {
      Type localType1 = new Type("DOUBLE", 0);
      DOUBLE = localType1;
      Type localType2 = new Type("STRING", 1);
      STRING = localType2;
      $VALUES = new Type[] { localType1, localType2 };
    }
    
    private Type() {}
  }
  
  private class Var
  {
    private boolean mConst;
    private boolean mCurrentItemIsExpression;
    private int mIndex = -1;
    private Expression mIndexExpression;
    private String mName;
    private IndexedVariable mVar;
    
    public Var(Variables paramVariables, Element paramElement)
    {
      if (paramElement != null)
      {
        this.mName = paramElement.getAttribute("name");
        this.mIndexExpression = Expression.build(paramVariables, paramElement.getAttribute("index"));
        this.mConst = Boolean.parseBoolean(paramElement.getAttribute("const"));
        paramVariables = this.mName;
        paramElement = VariableArrayElement.this.getVariables();
        boolean bool;
        if (VariableArrayElement.this.mType != VariableArrayElement.Type.STRING) {
          bool = true;
        } else {
          bool = false;
        }
        this.mVar = new IndexedVariable(paramVariables, paramElement, bool);
      }
    }
    
    private void update()
    {
      Object localObject = this.mIndexExpression;
      if (localObject == null) {
        return;
      }
      int i = (int)((Expression)localObject).evaluate();
      if ((i >= 0) && (i < VariableArrayElement.this.mArray.size()))
      {
        if ((this.mIndex == i) && (!this.mCurrentItemIsExpression)) {
          return;
        }
        localObject = (VariableArrayElement.Item)VariableArrayElement.this.mArray.get(i);
        if (this.mIndex != i)
        {
          this.mIndex = i;
          this.mCurrentItemIsExpression = ((VariableArrayElement.Item)localObject).isExpression();
        }
        VariableArrayElement.Type localType = VariableArrayElement.this.mType;
        if (localType == VariableArrayElement.Type.STRING) {
          this.mVar.set(((VariableArrayElement.Item)localObject).evaluateStr());
        } else if (localType == VariableArrayElement.Type.DOUBLE) {
          this.mVar.set(((VariableArrayElement.Item)localObject).evaluate());
        }
        return;
      }
      localObject = VariableArrayElement.this.mType;
      if (localObject == VariableArrayElement.Type.STRING) {
        this.mVar.set(null);
      } else if (localObject == VariableArrayElement.Type.DOUBLE) {
        this.mVar.set(0.0D);
      }
    }
    
    public void init()
    {
      this.mIndex = -1;
      update();
    }
    
    public void tick()
    {
      if (!this.mConst) {
        update();
      }
    }
  }
  
  public static abstract interface VarObserver
  {
    public abstract void onDataChange(Object[] paramArrayOfObject);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.VariableArrayElement
 * JD-Core Version:    0.7.0.1
 */