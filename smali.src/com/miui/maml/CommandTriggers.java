package com.miui.maml;

import com.miui.maml.elements.ScreenElement;
import java.util.ArrayList;
import java.util.Iterator;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class CommandTriggers
{
  private static final String LOG_TAG = "CommandTriggers";
  public static final String TAG_NAME = "Triggers";
  private ArrayList<CommandTrigger> mTriggers = new ArrayList();
  
  public CommandTriggers(Element paramElement, ScreenElement paramScreenElement)
  {
    if (paramElement != null) {
      load(paramElement, paramScreenElement);
    }
  }
  
  private void load(Element paramElement, ScreenElement paramScreenElement)
  {
    paramElement = paramElement.getChildNodes();
    for (int i = 0; i < paramElement.getLength(); i++) {
      if (paramElement.item(i).getNodeType() == 1)
      {
        Element localElement = (Element)paramElement.item(i);
        if (localElement.getNodeName().equals("Trigger")) {
          this.mTriggers.add(new CommandTrigger(localElement, paramScreenElement));
        }
      }
    }
  }
  
  public void add(CommandTrigger paramCommandTrigger)
  {
    this.mTriggers.add(paramCommandTrigger);
  }
  
  public CommandTrigger find(String paramString)
  {
    Iterator localIterator = this.mTriggers.iterator();
    while (localIterator.hasNext())
    {
      CommandTrigger localCommandTrigger = (CommandTrigger)localIterator.next();
      if (localCommandTrigger.isAction(paramString)) {
        return localCommandTrigger;
      }
    }
    return null;
  }
  
  public void finish()
  {
    Iterator localIterator = this.mTriggers.iterator();
    while (localIterator.hasNext()) {
      ((CommandTrigger)localIterator.next()).finish();
    }
  }
  
  public void init()
  {
    Iterator localIterator = this.mTriggers.iterator();
    while (localIterator.hasNext()) {
      ((CommandTrigger)localIterator.next()).init();
    }
  }
  
  public void onAction(String paramString)
  {
    Iterator localIterator = this.mTriggers.iterator();
    while (localIterator.hasNext()) {
      ((CommandTrigger)localIterator.next()).onAction(paramString);
    }
  }
  
  public void pause()
  {
    Iterator localIterator = this.mTriggers.iterator();
    while (localIterator.hasNext()) {
      ((CommandTrigger)localIterator.next()).pause();
    }
  }
  
  public void resume()
  {
    Iterator localIterator = this.mTriggers.iterator();
    while (localIterator.hasNext()) {
      ((CommandTrigger)localIterator.next()).resume();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.CommandTriggers
 * JD-Core Version:    0.7.0.1
 */