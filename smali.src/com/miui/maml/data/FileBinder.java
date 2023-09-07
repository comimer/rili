package com.miui.maml.data;

import android.text.TextUtils;
import android.util.Log;
import com.miui.maml.ScreenContext;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.util.FilenameExtFilter;
import com.miui.maml.util.TextFormatter;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import org.w3c.dom.Element;

public class FileBinder
  extends VariableBinder
{
  private static final boolean DBG = false;
  private static final String LOG_TAG = "FileBinder";
  public static final String TAG_NAME = "FileBinder";
  private IndexedVariable mCountVar;
  protected TextFormatter mDirFormatter;
  private String[] mFiles;
  private String[] mFilters;
  private ArrayList<Variable> mVariables = new ArrayList();
  
  public FileBinder(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    load(paramElement);
  }
  
  private void load(Element paramElement)
  {
    if (paramElement == null)
    {
      Log.e("FileBinder", "FileBinder node is null");
      return;
    }
    Object localObject = paramElement.getAttribute("filter").trim();
    if (TextUtils.isEmpty((CharSequence)localObject)) {
      localObject = null;
    } else {
      localObject = ((String)localObject).split(",");
    }
    this.mFilters = ((String[])localObject);
    localObject = Expression.build(getVariables(), paramElement.getAttribute("dirExp"));
    this.mDirFormatter = new TextFormatter(getVariables(), paramElement.getAttribute("dir"), (Expression)localObject);
    if (!TextUtils.isEmpty(this.mName))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(this.mName);
      ((StringBuilder)localObject).append(".count");
      this.mCountVar = new IndexedVariable(((StringBuilder)localObject).toString(), getContext().mVariables, true);
    }
    loadVariables(paramElement);
  }
  
  private void updateVariables()
  {
    Object localObject = this.mFiles;
    int i;
    if (localObject == null) {
      i = 0;
    } else {
      i = localObject.length;
    }
    Iterator localIterator = this.mVariables.iterator();
    while (localIterator.hasNext())
    {
      Variable localVariable = (Variable)localIterator.next();
      localObject = localVariable.mIndex;
      if (localObject != null)
      {
        int j = (int)((Expression)localObject).evaluate();
        if (i == 0) {
          localObject = null;
        } else {
          localObject = this.mFiles[(j % i)];
        }
        localVariable.set(localObject);
      }
    }
  }
  
  protected void addVariable(Variable paramVariable)
  {
    this.mVariables.add(paramVariable);
  }
  
  public void init()
  {
    super.init();
    refresh();
  }
  
  protected Variable onLoadVariable(Element paramElement)
  {
    return new Variable(paramElement, getVariables());
  }
  
  public void refresh()
  {
    super.refresh();
    File localFile = new File(this.mDirFormatter.getText());
    Object localObject = this.mFilters;
    if (localObject == null) {
      localObject = localFile.list();
    } else {
      localObject = localFile.list(new FilenameExtFilter((String[])localObject));
    }
    this.mFiles = ((String[])localObject);
    int i;
    if (localObject == null) {
      i = 0;
    } else {
      i = localObject.length;
    }
    localObject = this.mCountVar;
    if (localObject != null) {
      ((IndexedVariable)localObject).set(i);
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("file count: ");
    ((StringBuilder)localObject).append(i);
    Log.i("FileBinder", ((StringBuilder)localObject).toString());
    updateVariables();
  }
  
  public void tick()
  {
    super.tick();
    updateVariables();
  }
  
  private static class Variable
    extends VariableBinder.Variable
  {
    public Expression mIndex;
    
    public Variable(Element paramElement, Variables paramVariables)
    {
      super(paramVariables);
      paramElement = Expression.build(paramVariables, paramElement.getAttribute("index"));
      this.mIndex = paramElement;
      if (paramElement == null) {
        Log.e("Variable", "fail to load file index expression");
      }
    }
    
    protected int parseType(String paramString)
    {
      return 2;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.data.FileBinder
 * JD-Core Version:    0.7.0.1
 */