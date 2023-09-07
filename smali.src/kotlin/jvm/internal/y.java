package kotlin.jvm.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;

public class y
{
  private final ArrayList<Object> a;
  
  public y(int paramInt)
  {
    this.a = new ArrayList(paramInt);
  }
  
  public void a(Object paramObject)
  {
    this.a.add(paramObject);
  }
  
  public void b(Object paramObject)
  {
    if (paramObject == null) {
      return;
    }
    if ((paramObject instanceof Object[]))
    {
      paramObject = (Object[])paramObject;
      if (paramObject.length > 0)
      {
        localObject = this.a;
        ((ArrayList)localObject).ensureCapacity(((ArrayList)localObject).size() + paramObject.length);
        Collections.addAll(this.a, paramObject);
      }
    }
    else if ((paramObject instanceof Collection))
    {
      this.a.addAll((Collection)paramObject);
    }
    else
    {
      if ((paramObject instanceof Iterable))
      {
        localObject = ((Iterable)paramObject).iterator();
        while (((Iterator)localObject).hasNext())
        {
          paramObject = ((Iterator)localObject).next();
          this.a.add(paramObject);
        }
      }
      if (!(paramObject instanceof Iterator)) {
        break label156;
      }
      paramObject = (Iterator)paramObject;
      while (paramObject.hasNext()) {
        this.a.add(paramObject.next());
      }
    }
    return;
    label156:
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Don't know how to spread ");
    ((StringBuilder)localObject).append(paramObject.getClass());
    throw new UnsupportedOperationException(((StringBuilder)localObject).toString());
  }
  
  public int c()
  {
    return this.a.size();
  }
  
  public Object[] d(Object[] paramArrayOfObject)
  {
    return this.a.toArray(paramArrayOfObject);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.jvm.internal.y
 * JD-Core Version:    0.7.0.1
 */