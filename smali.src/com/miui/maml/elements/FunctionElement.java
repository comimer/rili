package com.miui.maml.elements;

import android.graphics.Canvas;
import android.util.Log;
import com.miui.maml.ActionCommand;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.util.Utils;
import com.miui.maml.util.Utils.XmlTraverseListener;
import java.util.ArrayList;
import java.util.Iterator;
import org.w3c.dom.Element;

public class FunctionElement
  extends ScreenElement
{
  public static final String TAG_NAME = "Function";
  private boolean enable = true;
  private ArrayList<ActionCommand> mCommands = new ArrayList();
  
  public FunctionElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    load(paramElement);
  }
  
  private void load(Element paramElement)
  {
    if (paramElement == null) {
      return;
    }
    Utils.traverseXmlElementChildren(paramElement, null, new Utils.XmlTraverseListener()
    {
      public void onChild(Element paramAnonymousElement)
      {
        paramAnonymousElement = ActionCommand.create(paramAnonymousElement, FunctionElement.this);
        if (paramAnonymousElement != null) {
          FunctionElement.this.mCommands.add(paramAnonymousElement);
        }
      }
    });
  }
  
  protected void doRender(Canvas paramCanvas) {}
  
  public void finish()
  {
    super.finish();
    Iterator localIterator = this.mCommands.iterator();
    while (localIterator.hasNext()) {
      ((ActionCommand)localIterator.next()).finish();
    }
  }
  
  public void init()
  {
    super.init();
    Iterator localIterator = this.mCommands.iterator();
    while (localIterator.hasNext()) {
      ((ActionCommand)localIterator.next()).init();
    }
  }
  
  public void pause()
  {
    super.pause();
    Iterator localIterator = this.mCommands.iterator();
    while (localIterator.hasNext()) {
      ((ActionCommand)localIterator.next()).pause();
    }
  }
  
  public void perform()
  {
    if (this.enable) {
      try
      {
        Iterator localIterator = this.mCommands.iterator();
        while (localIterator.hasNext()) {
          ((ActionCommand)localIterator.next()).perform();
        }
        StringBuilder localStringBuilder;
        return;
      }
      catch (StackOverflowError localStackOverflowError)
      {
        this.enable = false;
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("Function ");
        localStringBuilder.append(this.mName);
        localStringBuilder.append(" was disabled");
        Log.e("Function", localStringBuilder.toString());
      }
    }
  }
  
  public void resume()
  {
    super.resume();
    Iterator localIterator = this.mCommands.iterator();
    while (localIterator.hasNext()) {
      ((ActionCommand)localIterator.next()).resume();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.FunctionElement
 * JD-Core Version:    0.7.0.1
 */