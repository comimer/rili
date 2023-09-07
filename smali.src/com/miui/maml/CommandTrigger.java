package com.miui.maml;

import android.text.TextUtils;
import com.miui.maml.data.Expression;
import com.miui.maml.elements.ScreenElement;
import com.miui.maml.util.Utils;
import java.util.ArrayList;
import java.util.Iterator;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class CommandTrigger
{
  public static final String TAG_NAME = "Trigger";
  private String[] mActionStrings;
  private ArrayList<ActionCommand> mCommands = new ArrayList();
  private Expression mCondition;
  private ActionCommand.PropertyCommand mPropertyCommand;
  private ScreenElement mScreenElement;
  
  public CommandTrigger(Element paramElement, ScreenElement paramScreenElement)
  {
    if (paramElement != null) {
      load(paramElement, paramScreenElement);
    }
  }
  
  public static CommandTrigger fromElement(Element paramElement, ScreenElement paramScreenElement)
  {
    if (paramElement == null) {
      paramElement = null;
    } else {
      paramElement = new CommandTrigger(paramElement, paramScreenElement);
    }
    return paramElement;
  }
  
  public static CommandTrigger fromParentElement(Element paramElement, ScreenElement paramScreenElement)
  {
    return fromElement(Utils.getChild(paramElement, "Trigger"), paramScreenElement);
  }
  
  private void load(Element paramElement, ScreenElement paramScreenElement)
  {
    this.mScreenElement = paramScreenElement;
    String str1 = paramElement.getAttribute("target");
    Object localObject = paramElement.getAttribute("property");
    String str2 = paramElement.getAttribute("value");
    if ((!TextUtils.isEmpty((CharSequence)localObject)) && (!TextUtils.isEmpty(str1)) && (!TextUtils.isEmpty(str2)))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(str1);
      localStringBuilder.append(".");
      localStringBuilder.append((String)localObject);
      this.mPropertyCommand = ActionCommand.PropertyCommand.create(paramScreenElement, localStringBuilder.toString(), str2);
    }
    this.mActionStrings = paramElement.getAttribute("action").split(",");
    this.mCondition = Expression.build(this.mScreenElement.getVariables(), paramElement.getAttribute("condition"));
    localObject = paramElement.getChildNodes();
    for (int i = 0; i < ((NodeList)localObject).getLength(); i++) {
      if (((NodeList)localObject).item(i).getNodeType() == 1)
      {
        paramElement = ActionCommand.create((Element)((NodeList)localObject).item(i), paramScreenElement);
        if (paramElement != null) {
          this.mCommands.add(paramElement);
        }
      }
    }
  }
  
  public void finish()
  {
    Object localObject = this.mPropertyCommand;
    if (localObject != null) {
      ((ActionCommand)localObject).finish();
    }
    localObject = this.mCommands.iterator();
    while (((Iterator)localObject).hasNext()) {
      ((ActionCommand)((Iterator)localObject).next()).finish();
    }
  }
  
  public void init()
  {
    Object localObject = this.mPropertyCommand;
    if (localObject != null) {
      ((ActionCommand.PropertyCommand)localObject).init();
    }
    localObject = this.mCommands.iterator();
    while (((Iterator)localObject).hasNext()) {
      ((ActionCommand)((Iterator)localObject).next()).init();
    }
  }
  
  public boolean isAction(String paramString)
  {
    String[] arrayOfString = this.mActionStrings;
    int i = arrayOfString.length;
    for (int j = 0; j < i; j++) {
      if (arrayOfString[j].equals(paramString)) {
        return true;
      }
    }
    return false;
  }
  
  public void onAction(String paramString)
  {
    if (isAction(paramString)) {
      perform();
    }
  }
  
  public void pause()
  {
    Object localObject = this.mPropertyCommand;
    if (localObject != null) {
      ((ActionCommand)localObject).pause();
    }
    localObject = this.mCommands.iterator();
    while (((Iterator)localObject).hasNext()) {
      ((ActionCommand)((Iterator)localObject).next()).pause();
    }
  }
  
  public void perform()
  {
    Object localObject = this.mCondition;
    if ((localObject != null) && (((Expression)localObject).evaluate() <= 0.0D)) {
      return;
    }
    localObject = this.mPropertyCommand;
    if (localObject != null) {
      ((ActionCommand.PropertyCommand)localObject).perform();
    }
    localObject = this.mCommands.iterator();
    while (((Iterator)localObject).hasNext()) {
      ((ActionCommand)((Iterator)localObject).next()).perform();
    }
  }
  
  public void resume()
  {
    Object localObject = this.mPropertyCommand;
    if (localObject != null) {
      ((ActionCommand)localObject).resume();
    }
    localObject = this.mCommands.iterator();
    while (((Iterator)localObject).hasNext()) {
      ((ActionCommand)((Iterator)localObject).next()).resume();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.CommandTrigger
 * JD-Core Version:    0.7.0.1
 */