package com.miui.maml.data;

import com.miui.maml.ScreenContext;
import com.miui.maml.ScreenElementRoot;

public class VariableUpdater
{
  private VariableUpdaterManager mVariableUpdaterManager;
  
  public VariableUpdater(VariableUpdaterManager paramVariableUpdaterManager)
  {
    this.mVariableUpdaterManager = paramVariableUpdaterManager;
  }
  
  public void finish() {}
  
  protected final ScreenContext getContext()
  {
    return getRoot().getContext();
  }
  
  protected final ScreenElementRoot getRoot()
  {
    return this.mVariableUpdaterManager.getRoot();
  }
  
  public void init() {}
  
  public void pause() {}
  
  public void resume() {}
  
  public void tick(long paramLong) {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.data.VariableUpdater
 * JD-Core Version:    0.7.0.1
 */