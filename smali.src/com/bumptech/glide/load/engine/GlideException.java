package com.bumptech.glide.load.engine;

import android.util.Log;
import com.bumptech.glide.load.DataSource;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import n2.b;

public final class GlideException
  extends Exception
{
  private static final StackTraceElement[] EMPTY_ELEMENTS = new StackTraceElement[0];
  private static final long serialVersionUID = 1L;
  private final List<Throwable> causes;
  private Class<?> dataClass;
  private DataSource dataSource;
  private String detailMessage;
  private Exception exception;
  private b key;
  
  public GlideException(String paramString)
  {
    this(paramString, Collections.emptyList());
  }
  
  public GlideException(String paramString, Throwable paramThrowable)
  {
    this(paramString, Collections.singletonList(paramThrowable));
  }
  
  public GlideException(String paramString, List<Throwable> paramList)
  {
    this.detailMessage = paramString;
    setStackTrace(EMPTY_ELEMENTS);
    this.causes = paramList;
  }
  
  private void addRootCauses(Throwable paramThrowable, List<Throwable> paramList)
  {
    if ((paramThrowable instanceof GlideException))
    {
      paramThrowable = ((GlideException)paramThrowable).getCauses().iterator();
      while (paramThrowable.hasNext()) {
        addRootCauses((Throwable)paramThrowable.next(), paramList);
      }
    }
    paramList.add(paramThrowable);
  }
  
  private static void appendCauses(List<Throwable> paramList, Appendable paramAppendable)
  {
    try
    {
      appendCausesWrapped(paramList, paramAppendable);
      return;
    }
    catch (IOException paramList)
    {
      throw new RuntimeException(paramList);
    }
  }
  
  private static void appendCausesWrapped(List<Throwable> paramList, Appendable paramAppendable)
    throws IOException
  {
    int i = paramList.size();
    int k;
    for (int j = 0; j < i; j = k)
    {
      Object localObject = paramAppendable.append("Cause (");
      k = j + 1;
      ((Appendable)localObject).append(String.valueOf(k)).append(" of ").append(String.valueOf(i)).append("): ");
      localObject = (Throwable)paramList.get(j);
      if ((localObject instanceof GlideException)) {
        ((GlideException)localObject).printStackTrace(paramAppendable);
      } else {
        appendExceptionMessage((Throwable)localObject, paramAppendable);
      }
    }
  }
  
  private static void appendExceptionMessage(Throwable paramThrowable, Appendable paramAppendable)
  {
    try
    {
      paramAppendable.append(paramThrowable.getClass().toString()).append(": ").append(paramThrowable.getMessage()).append('\n');
      return;
    }
    catch (IOException paramAppendable)
    {
      throw new RuntimeException(paramThrowable);
    }
  }
  
  private void printStackTrace(Appendable paramAppendable)
  {
    appendExceptionMessage(this, paramAppendable);
    appendCauses(getCauses(), new a(paramAppendable));
  }
  
  public Throwable fillInStackTrace()
  {
    return this;
  }
  
  public List<Throwable> getCauses()
  {
    return this.causes;
  }
  
  public String getMessage()
  {
    StringBuilder localStringBuilder = new StringBuilder(71);
    localStringBuilder.append(this.detailMessage);
    Object localObject1 = this.dataClass;
    Object localObject2 = "";
    if (localObject1 != null)
    {
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append(", ");
      ((StringBuilder)localObject1).append(this.dataClass);
      localObject1 = ((StringBuilder)localObject1).toString();
    }
    else
    {
      localObject1 = "";
    }
    localStringBuilder.append((String)localObject1);
    if (this.dataSource != null)
    {
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append(", ");
      ((StringBuilder)localObject1).append(this.dataSource);
      localObject1 = ((StringBuilder)localObject1).toString();
    }
    else
    {
      localObject1 = "";
    }
    localStringBuilder.append((String)localObject1);
    localObject1 = localObject2;
    if (this.key != null)
    {
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append(", ");
      ((StringBuilder)localObject1).append(this.key);
      localObject1 = ((StringBuilder)localObject1).toString();
    }
    localStringBuilder.append((String)localObject1);
    localObject1 = getRootCauses();
    if (((List)localObject1).isEmpty()) {
      return localStringBuilder.toString();
    }
    if (((List)localObject1).size() == 1)
    {
      localStringBuilder.append("\nThere was 1 root cause:");
    }
    else
    {
      localStringBuilder.append("\nThere were ");
      localStringBuilder.append(((List)localObject1).size());
      localStringBuilder.append(" root causes:");
    }
    localObject2 = ((List)localObject1).iterator();
    while (((Iterator)localObject2).hasNext())
    {
      localObject1 = (Throwable)((Iterator)localObject2).next();
      localStringBuilder.append('\n');
      localStringBuilder.append(localObject1.getClass().getName());
      localStringBuilder.append('(');
      localStringBuilder.append(((Throwable)localObject1).getMessage());
      localStringBuilder.append(')');
    }
    localStringBuilder.append("\n call GlideException#logRootCauses(String) for more detail");
    return localStringBuilder.toString();
  }
  
  public Exception getOrigin()
  {
    return this.exception;
  }
  
  public List<Throwable> getRootCauses()
  {
    ArrayList localArrayList = new ArrayList();
    addRootCauses(this, localArrayList);
    return localArrayList;
  }
  
  public void logRootCauses(String paramString)
  {
    List localList = getRootCauses();
    int i = localList.size();
    int k;
    for (int j = 0; j < i; j = k)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Root cause (");
      k = j + 1;
      localStringBuilder.append(k);
      localStringBuilder.append(" of ");
      localStringBuilder.append(i);
      localStringBuilder.append(")");
      Log.i(paramString, localStringBuilder.toString(), (Throwable)localList.get(j));
    }
  }
  
  public void printStackTrace()
  {
    printStackTrace(System.err);
  }
  
  public void printStackTrace(PrintStream paramPrintStream)
  {
    printStackTrace(paramPrintStream);
  }
  
  public void printStackTrace(PrintWriter paramPrintWriter)
  {
    printStackTrace(paramPrintWriter);
  }
  
  void setLoggingDetails(b paramb, DataSource paramDataSource)
  {
    setLoggingDetails(paramb, paramDataSource, null);
  }
  
  void setLoggingDetails(b paramb, DataSource paramDataSource, Class<?> paramClass)
  {
    this.key = paramb;
    this.dataSource = paramDataSource;
    this.dataClass = paramClass;
  }
  
  public void setOrigin(Exception paramException)
  {
    this.exception = paramException;
  }
  
  private static final class a
    implements Appendable
  {
    private final Appendable a;
    private boolean b = true;
    
    a(Appendable paramAppendable)
    {
      this.a = paramAppendable;
    }
    
    private CharSequence a(CharSequence paramCharSequence)
    {
      Object localObject = paramCharSequence;
      if (paramCharSequence == null) {
        localObject = "";
      }
      return localObject;
    }
    
    public Appendable append(char paramChar)
      throws IOException
    {
      boolean bool1 = this.b;
      boolean bool2 = false;
      if (bool1)
      {
        this.b = false;
        this.a.append("  ");
      }
      if (paramChar == '\n') {
        bool2 = true;
      }
      this.b = bool2;
      this.a.append(paramChar);
      return this;
    }
    
    public Appendable append(CharSequence paramCharSequence)
      throws IOException
    {
      paramCharSequence = a(paramCharSequence);
      return append(paramCharSequence, 0, paramCharSequence.length());
    }
    
    public Appendable append(CharSequence paramCharSequence, int paramInt1, int paramInt2)
      throws IOException
    {
      paramCharSequence = a(paramCharSequence);
      boolean bool1 = this.b;
      boolean bool2 = false;
      if (bool1)
      {
        this.b = false;
        this.a.append("  ");
      }
      bool1 = bool2;
      if (paramCharSequence.length() > 0)
      {
        bool1 = bool2;
        if (paramCharSequence.charAt(paramInt2 - 1) == '\n') {
          bool1 = true;
        }
      }
      this.b = bool1;
      this.a.append(paramCharSequence, paramInt1, paramInt2);
      return this;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.engine.GlideException
 * JD-Core Version:    0.7.0.1
 */