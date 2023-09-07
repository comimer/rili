package com.miui.maml.data;

import android.text.TextUtils;
import android.util.Log;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.elements.ScreenElement;
import com.miui.maml.util.TextFormatter;
import java.util.ArrayList;
import java.util.Iterator;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class VariableBinderManager
  implements ContentProviderBinder.QueryCompleteListener
{
  private static final String LOG_TAG = "VariableBinderManager";
  public static final String TAG_NAME = "VariableBinders";
  private ScreenElementRoot mRoot;
  private ArrayList<VariableBinder> mVariableBinders = new ArrayList();
  
  public VariableBinderManager(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    this.mRoot = paramScreenElementRoot;
    if (paramElement != null) {
      load(paramElement, paramScreenElementRoot);
    }
  }
  
  private static VariableBinder createBinder(Element paramElement, ScreenElementRoot paramScreenElementRoot, VariableBinderManager paramVariableBinderManager)
  {
    String str = paramElement.getTagName();
    if (str.equalsIgnoreCase("ContentProviderBinder")) {
      paramElement = new ContentProviderBinder(paramElement, paramScreenElementRoot);
    } else if (str.equalsIgnoreCase("SensorBinder")) {
      paramElement = new SensorBinder(paramElement, paramScreenElementRoot);
    } else if (str.equalsIgnoreCase("BroadcastBinder")) {
      paramElement = new BroadcastBinder(paramElement, paramScreenElementRoot);
    } else if (str.equalsIgnoreCase("FileBinder")) {
      paramElement = new FileBinder(paramElement, paramScreenElementRoot);
    } else if (str.equalsIgnoreCase("SettingsBinder")) {
      paramElement = new SettingsBinder(paramElement, paramScreenElementRoot);
    } else {
      paramElement = null;
    }
    if (paramElement != null) {
      paramElement.setQueryCompleteListener(paramVariableBinderManager);
    }
    return paramElement;
  }
  
  private void load(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    if (paramElement != null)
    {
      loadBinders(paramElement, paramScreenElementRoot);
      return;
    }
    Log.e("VariableBinderManager", "node is null");
    throw new NullPointerException("node is null");
  }
  
  private void loadBinders(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    NodeList localNodeList = paramElement.getChildNodes();
    for (int i = 0; i < localNodeList.getLength(); i++) {
      if (localNodeList.item(i).getNodeType() == 1)
      {
        paramElement = createBinder((Element)localNodeList.item(i), paramScreenElementRoot, this);
        if (paramElement != null) {
          this.mVariableBinders.add(paramElement);
        }
      }
    }
  }
  
  public final void acceptVisitor(VariableBinderVisitor paramVariableBinderVisitor)
  {
    Iterator localIterator = this.mVariableBinders.iterator();
    while (localIterator.hasNext()) {
      ((VariableBinder)localIterator.next()).accept(paramVariableBinderVisitor);
    }
  }
  
  public ContentProviderBinder.Builder addContentProviderBinder(TextFormatter paramTextFormatter)
  {
    ContentProviderBinder localContentProviderBinder = new ContentProviderBinder(this.mRoot);
    localContentProviderBinder.setQueryCompleteListener(this);
    localContentProviderBinder.mUriFormatter = paramTextFormatter;
    this.mVariableBinders.add(localContentProviderBinder);
    return new ContentProviderBinder.Builder(localContentProviderBinder);
  }
  
  public ContentProviderBinder.Builder addContentProviderBinder(String paramString)
  {
    return addContentProviderBinder(new TextFormatter(this.mRoot.getVariables(), paramString));
  }
  
  public ContentProviderBinder.Builder addContentProviderBinder(String paramString1, String paramString2)
  {
    return addContentProviderBinder(new TextFormatter(this.mRoot.getVariables(), paramString1, paramString2));
  }
  
  public VariableBinder findBinder(String paramString)
  {
    Iterator localIterator = this.mVariableBinders.iterator();
    while (localIterator.hasNext())
    {
      VariableBinder localVariableBinder = (VariableBinder)localIterator.next();
      if (TextUtils.equals(paramString, localVariableBinder.getName())) {
        return localVariableBinder;
      }
    }
    return null;
  }
  
  public void finish()
  {
    Iterator localIterator = this.mVariableBinders.iterator();
    while (localIterator.hasNext()) {
      ((VariableBinder)localIterator.next()).finish();
    }
  }
  
  public void init()
  {
    Iterator localIterator = this.mVariableBinders.iterator();
    while (localIterator.hasNext()) {
      ((VariableBinder)localIterator.next()).init();
    }
  }
  
  public void onQueryCompleted(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    Iterator localIterator = this.mVariableBinders.iterator();
    while (localIterator.hasNext())
    {
      VariableBinder localVariableBinder = (VariableBinder)localIterator.next();
      String str = localVariableBinder.getDependency();
      if ((!TextUtils.isEmpty(str)) && (str.equals(paramString))) {
        localVariableBinder.startQuery();
      }
    }
  }
  
  public void pause()
  {
    Iterator localIterator = this.mVariableBinders.iterator();
    while (localIterator.hasNext()) {
      ((VariableBinder)localIterator.next()).pause();
    }
  }
  
  public void resume()
  {
    Iterator localIterator = this.mVariableBinders.iterator();
    while (localIterator.hasNext()) {
      ((VariableBinder)localIterator.next()).resume();
    }
  }
  
  public void tick()
  {
    Iterator localIterator = this.mVariableBinders.iterator();
    while (localIterator.hasNext()) {
      ((VariableBinder)localIterator.next()).tick();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.data.VariableBinderManager
 * JD-Core Version:    0.7.0.1
 */