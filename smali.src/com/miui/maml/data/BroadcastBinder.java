package com.miui.maml.data;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import android.util.Log;
import com.miui.maml.ScreenContext;
import com.miui.maml.ScreenElementRoot;
import java.util.ArrayList;
import java.util.Iterator;
import org.w3c.dom.Element;

public class BroadcastBinder
  extends VariableBinder
{
  private static final boolean DBG = true;
  private static final String LOG_TAG = "BroadcastBinder";
  public static final String TAG_NAME = "BroadcastBinder";
  private String mAction;
  private IntentFilter mIntentFilter;
  private final BroadcastReceiver mIntentReceiver = new BroadcastReceiver()
  {
    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("onNotify: ");
      localStringBuilder.append(BroadcastBinder.this.toString());
      Log.i("BroadcastBinder", localStringBuilder.toString());
      BroadcastBinder.this.onNotify(paramAnonymousContext, paramAnonymousIntent, null);
    }
  };
  private boolean mRegistered;
  
  public BroadcastBinder(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    load(paramElement);
  }
  
  private void load(Element paramElement)
  {
    if (paramElement != null)
    {
      String str = paramElement.getAttribute("action");
      this.mAction = str;
      if (!TextUtils.isEmpty(str))
      {
        this.mIntentFilter = new IntentFilter(this.mAction);
        loadVariables(paramElement);
        return;
      }
      Log.e("BroadcastBinder", "no action in broadcast binder");
      throw new IllegalArgumentException("no action in broadcast binder element");
    }
    Log.e("BroadcastBinder", "ContentProviderBinder node is null");
    throw new NullPointerException("node is null");
  }
  
  private void updateVariables(Intent paramIntent)
  {
    if (paramIntent == null) {
      return;
    }
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("updateVariables: ");
    ((StringBuilder)localObject1).append(paramIntent);
    Log.d("BroadcastBinder", ((StringBuilder)localObject1).toString());
    Iterator localIterator = this.mVariables.iterator();
    while (localIterator.hasNext())
    {
      Variable localVariable = (Variable)localIterator.next();
      double d = 0.0D;
      int i = localVariable.mType;
      if (i != 2)
      {
        if (i != 3)
        {
          if (i != 4)
          {
            if (i != 5)
            {
              if (i != 6)
              {
                localObject1 = new StringBuilder();
                ((StringBuilder)localObject1).append("invalide type");
                ((StringBuilder)localObject1).append(localVariable.mTypeStr);
                Log.w("BroadcastBinder", ((StringBuilder)localObject1).toString());
              }
              else
              {
                d = paramIntent.getDoubleExtra(localVariable.mExtraName, localVariable.mDefNumberValue);
              }
            }
            else {
              d = paramIntent.getFloatExtra(localVariable.mExtraName, (float)localVariable.mDefNumberValue);
            }
          }
          else {
            d = paramIntent.getLongExtra(localVariable.mExtraName, localVariable.mDefNumberValue);
          }
        }
        else {
          d = paramIntent.getIntExtra(localVariable.mExtraName, (int)localVariable.mDefNumberValue);
        }
        localVariable.set(d);
        localObject1 = String.format("%f", new Object[] { Double.valueOf(d) });
      }
      else
      {
        localObject1 = paramIntent.getStringExtra(localVariable.mExtraName);
        if (localObject1 == null) {
          localObject2 = localVariable.mDefStringValue;
        } else {
          localObject2 = localObject1;
        }
        localVariable.set(localObject2);
      }
      Object localObject2 = String.format("name:%s type:%s value:%s", new Object[] { localVariable.mName, localVariable.mTypeStr, localObject1 });
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("updateVariables: ");
      ((StringBuilder)localObject1).append((String)localObject2);
      Log.d("BroadcastBinder", ((StringBuilder)localObject1).toString());
    }
  }
  
  protected void addVariable(Variable paramVariable)
  {
    this.mVariables.add(paramVariable);
  }
  
  public void finish()
  {
    super.finish();
    unregister();
  }
  
  public void init()
  {
    super.init();
    register();
  }
  
  protected Variable onLoadVariable(Element paramElement)
  {
    return new Variable(paramElement, getContext().mVariables);
  }
  
  protected void onNotify(Context paramContext, Intent paramIntent, Object paramObject)
  {
    updateVariables(paramIntent);
    onUpdateComplete();
  }
  
  protected void onRegister()
  {
    updateVariables(getContext().mContext.registerReceiver(this.mIntentReceiver, this.mIntentFilter));
    onUpdateComplete();
  }
  
  protected void onUnregister()
  {
    getContext().mContext.unregisterReceiver(this.mIntentReceiver);
  }
  
  protected void register()
  {
    if (this.mRegistered) {
      return;
    }
    onRegister();
    this.mRegistered = true;
  }
  
  protected void unregister()
  {
    if (!this.mRegistered) {
      return;
    }
    try
    {
      onUnregister();
      label12:
      this.mRegistered = false;
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      break label12;
    }
  }
  
  private static class Variable
    extends VariableBinder.Variable
  {
    public String mExtraName;
    
    public Variable(Element paramElement, Variables paramVariables)
    {
      super(paramVariables);
      this.mExtraName = paramElement.getAttribute("extra");
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.data.BroadcastBinder
 * JD-Core Version:    0.7.0.1
 */