package com.miui.maml.util;

import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.miui.maml.data.Expression;
import com.miui.maml.data.Variables;
import java.util.ArrayList;
import java.util.Iterator;
import org.w3c.dom.Element;

public class IntentInfo
{
  private static final String LOG_TAG = "TaskVariable";
  private Expression mClassNameExp;
  private ArrayList<Extra> mExtraList = new ArrayList();
  private Expression mPackageNameExp;
  private Task mTask;
  private String mUri;
  private Expression mUriExp;
  private Variables mVariables;
  
  public IntentInfo(Element paramElement, Variables paramVariables)
  {
    if (paramElement == null) {
      return;
    }
    this.mTask = Task.load(paramElement);
    this.mVariables = paramVariables;
    this.mPackageNameExp = Expression.build(paramVariables, paramElement.getAttribute("packageExp"));
    this.mClassNameExp = Expression.build(paramVariables, paramElement.getAttribute("classExp"));
    this.mUri = paramElement.getAttribute("uri");
    this.mUriExp = Expression.build(paramVariables, paramElement.getAttribute("uriExp"));
    loadExtras(paramElement);
  }
  
  private void loadExtras(Element paramElement)
  {
    Utils.traverseXmlElementChildren(paramElement, "Extra", new Utils.XmlTraverseListener()
    {
      public void onChild(Element paramAnonymousElement)
      {
        IntentInfo.this.mExtraList.add(new IntentInfo.Extra(IntentInfo.this, paramAnonymousElement));
      }
    });
  }
  
  public String getAction()
  {
    Object localObject = this.mTask;
    if (localObject != null) {
      localObject = ((Task)localObject).action;
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public String getId()
  {
    Object localObject = this.mTask;
    if (localObject != null) {
      localObject = ((Task)localObject).id;
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public void set(Task paramTask)
  {
    this.mTask = paramTask;
  }
  
  public void update(Intent paramIntent)
  {
    Object localObject1 = this.mTask;
    Object localObject2 = null;
    if (localObject1 != null) {
      localObject1 = ((Task)localObject1).action;
    } else {
      localObject1 = null;
    }
    if (!TextUtils.isEmpty((CharSequence)localObject1)) {
      paramIntent.setAction((String)localObject1);
    }
    localObject1 = this.mTask;
    if (localObject1 != null) {
      localObject1 = ((Task)localObject1).type;
    } else {
      localObject1 = null;
    }
    if (!TextUtils.isEmpty((CharSequence)localObject1)) {
      paramIntent.setType((String)localObject1);
    }
    localObject1 = this.mTask;
    if (localObject1 != null) {
      localObject1 = ((Task)localObject1).category;
    } else {
      localObject1 = null;
    }
    if (!TextUtils.isEmpty((CharSequence)localObject1)) {
      paramIntent.addCategory((String)localObject1);
    }
    localObject1 = this.mTask;
    if (localObject1 != null) {
      localObject1 = ((Task)localObject1).packageName;
    } else {
      localObject1 = null;
    }
    Object localObject3 = this.mPackageNameExp;
    Object localObject4 = localObject1;
    if (localObject3 != null) {
      localObject4 = ((Expression)localObject3).evaluateStr();
    }
    localObject3 = this.mTask;
    localObject1 = localObject2;
    if (localObject3 != null) {
      localObject1 = ((Task)localObject3).className;
    }
    localObject2 = this.mClassNameExp;
    if (localObject2 != null) {
      localObject1 = ((Expression)localObject2).evaluateStr();
    }
    if (!TextUtils.isEmpty((CharSequence)localObject4)) {
      if (!TextUtils.isEmpty((CharSequence)localObject1)) {
        paramIntent.setClassName((String)localObject4, (String)localObject1);
      } else {
        paramIntent.setPackage((String)localObject4);
      }
    }
    CustomUtils.replaceCameraIntentInfoOnF3M((String)localObject4, (String)localObject1, paramIntent);
    localObject1 = this.mUri;
    localObject4 = this.mUriExp;
    if (localObject4 != null) {
      localObject1 = ((Expression)localObject4).evaluateStr();
    }
    if (!TextUtils.isEmpty((CharSequence)localObject1)) {
      paramIntent.setData(Uri.parse((String)localObject1));
    }
    localObject1 = this.mExtraList;
    if (localObject1 != null)
    {
      localObject4 = ((ArrayList)localObject1).iterator();
      while (((Iterator)localObject4).hasNext())
      {
        localObject1 = (Extra)((Iterator)localObject4).next();
        if (((Extra)localObject1).isConditionTrue()) {
          switch (2.$SwitchMap$com$miui$maml$util$IntentInfo$Type[localObject1.mType.ordinal()])
          {
          default: 
            break;
          case 6: 
            localObject2 = ((Extra)localObject1).getName();
            boolean bool;
            if (((Extra)localObject1).getDouble() > 0.0D) {
              bool = true;
            } else {
              bool = false;
            }
            paramIntent.putExtra((String)localObject2, bool);
            break;
          case 5: 
            paramIntent.putExtra(((Extra)localObject1).getName(), ((Extra)localObject1).getDouble());
            break;
          case 4: 
            paramIntent.putExtra(((Extra)localObject1).getName(), (float)((Extra)localObject1).getDouble());
            break;
          case 3: 
            paramIntent.putExtra(((Extra)localObject1).getName(), ((Extra)localObject1).getDouble());
            break;
          case 2: 
            paramIntent.putExtra(((Extra)localObject1).getName(), (int)((Extra)localObject1).getDouble());
            break;
          case 1: 
            paramIntent.putExtra(((Extra)localObject1).getName(), ((Extra)localObject1).getString());
            break;
          }
        } else {
          paramIntent.removeExtra(((Extra)localObject1).getName());
        }
      }
    }
  }
  
  private class Extra
  {
    public static final String TAG_NAME = "Extra";
    private Expression mCondition;
    private Expression mExpression;
    private String mName;
    protected IntentInfo.Type mType = IntentInfo.Type.DOUBLE;
    
    public Extra(Element paramElement)
    {
      load(paramElement);
    }
    
    private void load(Element paramElement)
    {
      if (paramElement == null)
      {
        Log.e("TaskVariable", "node is null");
        return;
      }
      this.mName = paramElement.getAttribute("name");
      Object localObject = paramElement.getAttribute("type");
      if ("string".equalsIgnoreCase((String)localObject)) {
        this.mType = IntentInfo.Type.STRING;
      } else if ((!"int".equalsIgnoreCase((String)localObject)) && (!"integer".equalsIgnoreCase((String)localObject)))
      {
        if ("long".equalsIgnoreCase((String)localObject)) {
          this.mType = IntentInfo.Type.LONG;
        } else if ("float".equalsIgnoreCase((String)localObject)) {
          this.mType = IntentInfo.Type.FLOAT;
        } else if ("double".equalsIgnoreCase((String)localObject)) {
          this.mType = IntentInfo.Type.DOUBLE;
        } else if ("boolean".equalsIgnoreCase((String)localObject)) {
          this.mType = IntentInfo.Type.BOOLEAN;
        }
      }
      else {
        this.mType = IntentInfo.Type.INT;
      }
      localObject = Expression.build(IntentInfo.this.mVariables, paramElement.getAttribute("expression"));
      this.mExpression = ((Expression)localObject);
      if (localObject == null) {
        Log.e("TaskVariable", "invalid expression in IntentCommand");
      }
      this.mCondition = Expression.build(IntentInfo.this.mVariables, paramElement.getAttribute("condition"));
    }
    
    public double getDouble()
    {
      Expression localExpression = this.mExpression;
      if (localExpression == null) {
        return 0.0D;
      }
      return localExpression.evaluate();
    }
    
    public String getName()
    {
      return this.mName;
    }
    
    public String getString()
    {
      Expression localExpression = this.mExpression;
      if (localExpression == null) {
        return null;
      }
      return localExpression.evaluateStr();
    }
    
    public boolean isConditionTrue()
    {
      Expression localExpression = this.mCondition;
      boolean bool = true;
      if (localExpression == null) {
        return true;
      }
      if (localExpression.evaluate() <= 0.0D) {
        bool = false;
      }
      return bool;
    }
  }
  
  private static enum Type
  {
    static
    {
      Type localType1 = new Type("STRING", 0);
      STRING = localType1;
      Type localType2 = new Type("INT", 1);
      INT = localType2;
      Type localType3 = new Type("LONG", 2);
      LONG = localType3;
      Type localType4 = new Type("FLOAT", 3);
      FLOAT = localType4;
      Type localType5 = new Type("DOUBLE", 4);
      DOUBLE = localType5;
      Type localType6 = new Type("BOOLEAN", 5);
      BOOLEAN = localType6;
      $VALUES = new Type[] { localType1, localType2, localType3, localType4, localType5, localType6 };
    }
    
    private Type() {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.util.IntentInfo
 * JD-Core Version:    0.7.0.1
 */