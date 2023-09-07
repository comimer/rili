package com.miui.maml.util;

import org.w3c.dom.Element;

public class Task
{
  public static String TAG_ACTION = "action";
  public static String TAG_CATEGORY = "category";
  public static String TAG_CLASS = "class";
  public static String TAG_ID = "id";
  public static String TAG_NAME = "name";
  public static String TAG_PACKAGE = "package";
  public static String TAG_TYPE = "type";
  public String action;
  public String category;
  public String className;
  public String id;
  public String name;
  public String packageName;
  public String type;
  
  public static Task load(Element paramElement)
  {
    if (paramElement == null) {
      return null;
    }
    Task localTask = new Task();
    localTask.id = paramElement.getAttribute("id");
    localTask.action = paramElement.getAttribute("action");
    localTask.type = paramElement.getAttribute("type");
    localTask.category = paramElement.getAttribute("category");
    localTask.packageName = paramElement.getAttribute("package");
    localTask.className = paramElement.getAttribute("class");
    localTask.name = paramElement.getAttribute("name");
    return localTask;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.util.Task
 * JD-Core Version:    0.7.0.1
 */