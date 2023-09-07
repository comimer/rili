package com.miui.maml;

import com.miui.maml.elements.ScreenElement;
import org.w3c.dom.Element;

public class VibrateCommand
  extends ActionCommand
{
  private static final String LOG_TAG = "VibrateCommand";
  public static final String TAG_NAME = "VibrateCommand";
  
  public VibrateCommand(ScreenElement paramScreenElement, Element paramElement)
  {
    super(paramScreenElement);
  }
  
  protected void doPerform() {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.VibrateCommand
 * JD-Core Version:    0.7.0.1
 */