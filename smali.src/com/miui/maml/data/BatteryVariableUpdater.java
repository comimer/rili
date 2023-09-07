package com.miui.maml.data;

import android.content.Context;
import android.content.Intent;
import com.miui.maml.ScreenContext;
import com.miui.maml.ScreenElementRoot;

public class BatteryVariableUpdater
  extends NotifierVariableUpdater
{
  public static final String USE_TAG = "Battery";
  private IndexedVariable mBatteryLevel = new IndexedVariable("battery_level", getRoot().getContext().mVariables, true);
  private int mLevel;
  
  public BatteryVariableUpdater(VariableUpdaterManager paramVariableUpdaterManager)
  {
    super(paramVariableUpdaterManager, "android.intent.action.BATTERY_CHANGED");
  }
  
  public void onNotify(Context paramContext, Intent paramIntent, Object paramObject)
  {
    if (paramIntent.getAction().equals("android.intent.action.BATTERY_CHANGED"))
    {
      int i = paramIntent.getIntExtra("level", -1);
      if ((i != -1) && (this.mLevel != i))
      {
        paramContext = this.mBatteryLevel;
        double d;
        if (i >= 100) {
          d = 100.0D;
        } else {
          d = i;
        }
        paramContext.set(d);
        this.mLevel = i;
        getRoot().requestUpdate();
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.data.BatteryVariableUpdater
 * JD-Core Version:    0.7.0.1
 */