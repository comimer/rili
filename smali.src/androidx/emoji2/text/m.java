package androidx.emoji2.text;

import android.annotation.SuppressLint;
import android.text.Editable;
import android.text.SpanWatcher;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.TextWatcher;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public final class m
  extends SpannableStringBuilder
{
  private final Class<?> a;
  private final List<a> b = new ArrayList();
  
  m(Class<?> paramClass, CharSequence paramCharSequence)
  {
    super(paramCharSequence);
    androidx.core.util.h.h(paramClass, "watcherClass cannot be null");
    this.a = paramClass;
  }
  
  m(Class<?> paramClass, CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    super(paramCharSequence, paramInt1, paramInt2);
    androidx.core.util.h.h(paramClass, "watcherClass cannot be null");
    this.a = paramClass;
  }
  
  private void b()
  {
    for (int i = 0; i < this.b.size(); i++) {
      ((a)this.b.get(i)).a();
    }
  }
  
  public static m c(Class<?> paramClass, CharSequence paramCharSequence)
  {
    return new m(paramClass, paramCharSequence);
  }
  
  private void e()
  {
    for (int i = 0; i < this.b.size(); i++) {
      ((a)this.b.get(i)).onTextChanged(this, 0, length(), length());
    }
  }
  
  private a f(Object paramObject)
  {
    for (int i = 0; i < this.b.size(); i++)
    {
      a locala = (a)this.b.get(i);
      if (locala.a == paramObject) {
        return locala;
      }
    }
    return null;
  }
  
  private boolean g(Class<?> paramClass)
  {
    boolean bool;
    if (this.a == paramClass) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private boolean h(Object paramObject)
  {
    boolean bool;
    if ((paramObject != null) && (g(paramObject.getClass()))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private void i()
  {
    for (int i = 0; i < this.b.size(); i++) {
      ((a)this.b.get(i)).c();
    }
  }
  
  public void a()
  {
    b();
  }
  
  public SpannableStringBuilder append(char paramChar)
  {
    super.append(paramChar);
    return this;
  }
  
  public SpannableStringBuilder append(@SuppressLint({"UnknownNullness"}) CharSequence paramCharSequence)
  {
    super.append(paramCharSequence);
    return this;
  }
  
  public SpannableStringBuilder append(@SuppressLint({"UnknownNullness"}) CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    super.append(paramCharSequence, paramInt1, paramInt2);
    return this;
  }
  
  @SuppressLint({"UnknownNullness"})
  public SpannableStringBuilder append(CharSequence paramCharSequence, Object paramObject, int paramInt)
  {
    super.append(paramCharSequence, paramObject, paramInt);
    return this;
  }
  
  public void d()
  {
    i();
    e();
  }
  
  @SuppressLint({"UnknownNullness"})
  public SpannableStringBuilder delete(int paramInt1, int paramInt2)
  {
    super.delete(paramInt1, paramInt2);
    return this;
  }
  
  public int getSpanEnd(Object paramObject)
  {
    Object localObject = paramObject;
    if (h(paramObject))
    {
      a locala = f(paramObject);
      localObject = paramObject;
      if (locala != null) {
        localObject = locala;
      }
    }
    return super.getSpanEnd(localObject);
  }
  
  public int getSpanFlags(Object paramObject)
  {
    Object localObject = paramObject;
    if (h(paramObject))
    {
      a locala = f(paramObject);
      localObject = paramObject;
      if (locala != null) {
        localObject = locala;
      }
    }
    return super.getSpanFlags(localObject);
  }
  
  public int getSpanStart(Object paramObject)
  {
    Object localObject = paramObject;
    if (h(paramObject))
    {
      a locala = f(paramObject);
      localObject = paramObject;
      if (locala != null) {
        localObject = locala;
      }
    }
    return super.getSpanStart(localObject);
  }
  
  @SuppressLint({"UnknownNullness"})
  public <T> T[] getSpans(int paramInt1, int paramInt2, Class<T> paramClass)
  {
    if (g(paramClass))
    {
      a[] arrayOfa = (a[])super.getSpans(paramInt1, paramInt2, a.class);
      paramClass = (Object[])Array.newInstance(paramClass, arrayOfa.length);
      for (paramInt1 = 0; paramInt1 < arrayOfa.length; paramInt1++) {
        paramClass[paramInt1] = arrayOfa[paramInt1].a;
      }
      return paramClass;
    }
    return super.getSpans(paramInt1, paramInt2, paramClass);
  }
  
  @SuppressLint({"UnknownNullness"})
  public SpannableStringBuilder insert(int paramInt, CharSequence paramCharSequence)
  {
    super.insert(paramInt, paramCharSequence);
    return this;
  }
  
  @SuppressLint({"UnknownNullness"})
  public SpannableStringBuilder insert(int paramInt1, CharSequence paramCharSequence, int paramInt2, int paramInt3)
  {
    super.insert(paramInt1, paramCharSequence, paramInt2, paramInt3);
    return this;
  }
  
  public int nextSpanTransition(int paramInt1, int paramInt2, Class paramClass)
  {
    Object localObject;
    if (paramClass != null)
    {
      localObject = paramClass;
      if (!g(paramClass)) {}
    }
    else
    {
      localObject = a.class;
    }
    return super.nextSpanTransition(paramInt1, paramInt2, (Class)localObject);
  }
  
  public void removeSpan(Object paramObject)
  {
    a locala2;
    if (h(paramObject))
    {
      a locala1 = f(paramObject);
      locala2 = locala1;
      if (locala1 != null)
      {
        paramObject = locala1;
        locala2 = locala1;
      }
    }
    else
    {
      locala2 = null;
    }
    super.removeSpan(paramObject);
    if (locala2 != null) {
      this.b.remove(locala2);
    }
  }
  
  @SuppressLint({"UnknownNullness"})
  public SpannableStringBuilder replace(int paramInt1, int paramInt2, CharSequence paramCharSequence)
  {
    b();
    super.replace(paramInt1, paramInt2, paramCharSequence);
    i();
    return this;
  }
  
  @SuppressLint({"UnknownNullness"})
  public SpannableStringBuilder replace(int paramInt1, int paramInt2, CharSequence paramCharSequence, int paramInt3, int paramInt4)
  {
    b();
    super.replace(paramInt1, paramInt2, paramCharSequence, paramInt3, paramInt4);
    i();
    return this;
  }
  
  public void setSpan(Object paramObject, int paramInt1, int paramInt2, int paramInt3)
  {
    Object localObject = paramObject;
    if (h(paramObject))
    {
      localObject = new a(paramObject);
      this.b.add(localObject);
    }
    super.setSpan(localObject, paramInt1, paramInt2, paramInt3);
  }
  
  @SuppressLint({"UnknownNullness"})
  public CharSequence subSequence(int paramInt1, int paramInt2)
  {
    return new m(this.a, this, paramInt1, paramInt2);
  }
  
  private static class a
    implements TextWatcher, SpanWatcher
  {
    final Object a;
    private final AtomicInteger b = new AtomicInteger(0);
    
    a(Object paramObject)
    {
      this.a = paramObject;
    }
    
    private boolean b(Object paramObject)
    {
      return paramObject instanceof h;
    }
    
    final void a()
    {
      this.b.incrementAndGet();
    }
    
    public void afterTextChanged(Editable paramEditable)
    {
      ((TextWatcher)this.a).afterTextChanged(paramEditable);
    }
    
    public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
    {
      ((TextWatcher)this.a).beforeTextChanged(paramCharSequence, paramInt1, paramInt2, paramInt3);
    }
    
    final void c()
    {
      this.b.decrementAndGet();
    }
    
    public void onSpanAdded(Spannable paramSpannable, Object paramObject, int paramInt1, int paramInt2)
    {
      if ((this.b.get() > 0) && (b(paramObject))) {
        return;
      }
      ((SpanWatcher)this.a).onSpanAdded(paramSpannable, paramObject, paramInt1, paramInt2);
    }
    
    public void onSpanChanged(Spannable paramSpannable, Object paramObject, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      if ((this.b.get() > 0) && (b(paramObject))) {
        return;
      }
      ((SpanWatcher)this.a).onSpanChanged(paramSpannable, paramObject, paramInt1, paramInt2, paramInt3, paramInt4);
    }
    
    public void onSpanRemoved(Spannable paramSpannable, Object paramObject, int paramInt1, int paramInt2)
    {
      if ((this.b.get() > 0) && (b(paramObject))) {
        return;
      }
      ((SpanWatcher)this.a).onSpanRemoved(paramSpannable, paramObject, paramInt1, paramInt2);
    }
    
    public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
    {
      ((TextWatcher)this.a).onTextChanged(paramCharSequence, paramInt1, paramInt2, paramInt3);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.emoji2.text.m
 * JD-Core Version:    0.7.0.1
 */