package javax.mail;

import java.io.Serializable;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Locale;
import java.util.Set;
import java.util.Vector;

public class Flags
  implements Cloneable, Serializable
{
  private static final int ANSWERED_BIT = 1;
  private static final int DELETED_BIT = 2;
  private static final int DRAFT_BIT = 4;
  private static final int FLAGGED_BIT = 8;
  private static final int RECENT_BIT = 16;
  private static final int SEEN_BIT = 32;
  private static final int USER_BIT = -2147483648;
  private static final long serialVersionUID = 6243590407214169028L;
  private int system_flags = 0;
  private Hashtable<String, String> user_flags = null;
  
  public Flags() {}
  
  public Flags(String paramString)
  {
    Hashtable localHashtable = new Hashtable(1);
    this.user_flags = localHashtable;
    localHashtable.put(paramString.toLowerCase(Locale.ENGLISH), paramString);
  }
  
  public Flags(a parama)
  {
    this.system_flags = (a.a(parama) | 0x0);
  }
  
  public Flags(Flags paramFlags)
  {
    this.system_flags = paramFlags.system_flags;
    paramFlags = paramFlags.user_flags;
    if (paramFlags != null) {
      this.user_flags = ((Hashtable)paramFlags.clone());
    }
  }
  
  public void add(String paramString)
  {
    if (this.user_flags == null) {
      this.user_flags = new Hashtable(1);
    }
    this.user_flags.put(paramString.toLowerCase(Locale.ENGLISH), paramString);
  }
  
  public void add(a parama)
  {
    int i = this.system_flags;
    this.system_flags = (a.a(parama) | i);
  }
  
  public void add(Flags paramFlags)
  {
    this.system_flags |= paramFlags.system_flags;
    if (paramFlags.user_flags != null)
    {
      if (this.user_flags == null) {
        this.user_flags = new Hashtable(1);
      }
      Enumeration localEnumeration = paramFlags.user_flags.keys();
      while (localEnumeration.hasMoreElements())
      {
        String str = (String)localEnumeration.nextElement();
        this.user_flags.put(str, paramFlags.user_flags.get(str));
      }
    }
  }
  
  public void clearSystemFlags()
  {
    this.system_flags = 0;
  }
  
  public void clearUserFlags()
  {
    this.user_flags = null;
  }
  
  public Object clone()
  {
    Object localObject;
    try
    {
      Flags localFlags = (Flags)super.clone();
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      localObject = null;
    }
    Hashtable localHashtable = this.user_flags;
    if (localHashtable != null) {
      localObject.user_flags = ((Hashtable)localHashtable.clone());
    }
    return localObject;
  }
  
  public boolean contains(String paramString)
  {
    Hashtable localHashtable = this.user_flags;
    if (localHashtable == null) {
      return false;
    }
    return localHashtable.containsKey(paramString.toLowerCase(Locale.ENGLISH));
  }
  
  public boolean contains(a parama)
  {
    int i = this.system_flags;
    boolean bool;
    if ((a.a(parama) & i) != 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean contains(Flags paramFlags)
  {
    int i = paramFlags.system_flags;
    if ((this.system_flags & i) != i) {
      return false;
    }
    paramFlags = paramFlags.user_flags;
    if (paramFlags != null)
    {
      if (this.user_flags == null) {
        return false;
      }
      paramFlags = paramFlags.keys();
      while (paramFlags.hasMoreElements()) {
        if (!this.user_flags.containsKey(paramFlags.nextElement())) {
          return false;
        }
      }
    }
    return true;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof Flags)) {
      return false;
    }
    paramObject = (Flags)paramObject;
    if (paramObject.system_flags != this.system_flags) {
      return false;
    }
    Hashtable localHashtable = this.user_flags;
    int i;
    if (localHashtable == null) {
      i = 0;
    } else {
      i = localHashtable.size();
    }
    localHashtable = paramObject.user_flags;
    int j;
    if (localHashtable == null) {
      j = 0;
    } else {
      j = localHashtable.size();
    }
    if ((i == 0) && (j == 0)) {
      return true;
    }
    if (paramObject.user_flags != null)
    {
      localHashtable = this.user_flags;
      if ((localHashtable != null) && (j == i)) {
        return localHashtable.keySet().equals(paramObject.user_flags.keySet());
      }
    }
    return false;
  }
  
  public a[] getSystemFlags()
  {
    Vector localVector = new Vector();
    if ((this.system_flags & 0x1) != 0) {
      localVector.addElement(a.b);
    }
    if ((this.system_flags & 0x2) != 0) {
      localVector.addElement(a.c);
    }
    if ((this.system_flags & 0x4) != 0) {
      localVector.addElement(a.d);
    }
    if ((this.system_flags & 0x8) != 0) {
      localVector.addElement(a.e);
    }
    if ((this.system_flags & 0x10) != 0) {
      localVector.addElement(a.f);
    }
    if ((this.system_flags & 0x20) != 0) {
      localVector.addElement(a.g);
    }
    if ((this.system_flags & 0x80000000) != 0) {
      localVector.addElement(a.h);
    }
    a[] arrayOfa = new a[localVector.size()];
    localVector.copyInto(arrayOfa);
    return arrayOfa;
  }
  
  public String[] getUserFlags()
  {
    Vector localVector = new Vector();
    Object localObject = this.user_flags;
    if (localObject != null)
    {
      localObject = ((Hashtable)localObject).elements();
      while (((Enumeration)localObject).hasMoreElements()) {
        localVector.addElement(((Enumeration)localObject).nextElement());
      }
    }
    localObject = new String[localVector.size()];
    localVector.copyInto((Object[])localObject);
    return localObject;
  }
  
  public int hashCode()
  {
    int i = this.system_flags;
    Object localObject = this.user_flags;
    int j = i;
    if (localObject != null)
    {
      localObject = ((Hashtable)localObject).keys();
      for (;;)
      {
        j = i;
        if (!((Enumeration)localObject).hasMoreElements()) {
          break;
        }
        i += ((String)((Enumeration)localObject).nextElement()).hashCode();
      }
    }
    return j;
  }
  
  public void remove(String paramString)
  {
    Hashtable localHashtable = this.user_flags;
    if (localHashtable != null) {
      localHashtable.remove(paramString.toLowerCase(Locale.ENGLISH));
    }
  }
  
  public void remove(a parama)
  {
    int i = this.system_flags;
    this.system_flags = (a.a(parama) & i);
  }
  
  public void remove(Flags paramFlags)
  {
    this.system_flags &= paramFlags.system_flags;
    paramFlags = paramFlags.user_flags;
    if (paramFlags != null)
    {
      if (this.user_flags == null) {
        return;
      }
      paramFlags = paramFlags.keys();
      while (paramFlags.hasMoreElements()) {
        this.user_flags.remove(paramFlags.nextElement());
      }
    }
  }
  
  public boolean retainAll(Flags paramFlags)
  {
    int i = this.system_flags;
    int j = paramFlags.system_flags & i;
    boolean bool1 = false;
    boolean bool2;
    if (i != j)
    {
      this.system_flags = j;
      bool2 = true;
    }
    else
    {
      bool2 = false;
    }
    Object localObject = this.user_flags;
    boolean bool3 = bool2;
    if (localObject != null)
    {
      bool3 = bool2;
      if ((paramFlags.system_flags & 0x80000000) == 0)
      {
        if (paramFlags.user_flags != null)
        {
          localObject = ((Hashtable)localObject).keys();
          for (;;)
          {
            bool3 = bool2;
            if (!((Enumeration)localObject).hasMoreElements()) {
              break;
            }
            String str = (String)((Enumeration)localObject).nextElement();
            if (!paramFlags.user_flags.containsKey(str))
            {
              this.user_flags.remove(str);
              bool2 = true;
            }
          }
        }
        bool2 = bool1;
        if (((Hashtable)localObject).size() > 0) {
          bool2 = true;
        }
        this.user_flags = null;
        bool3 = bool2;
      }
    }
    return bool3;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if ((this.system_flags & 0x1) != 0) {
      localStringBuilder.append("\\Answered ");
    }
    if ((this.system_flags & 0x2) != 0) {
      localStringBuilder.append("\\Deleted ");
    }
    if ((this.system_flags & 0x4) != 0) {
      localStringBuilder.append("\\Draft ");
    }
    if ((this.system_flags & 0x8) != 0) {
      localStringBuilder.append("\\Flagged ");
    }
    if ((this.system_flags & 0x10) != 0) {
      localStringBuilder.append("\\Recent ");
    }
    if ((this.system_flags & 0x20) != 0) {
      localStringBuilder.append("\\Seen ");
    }
    if ((this.system_flags & 0x80000000) != 0) {
      localStringBuilder.append("\\* ");
    }
    Object localObject = this.user_flags;
    if (localObject != null)
    {
      localObject = ((Hashtable)localObject).elements();
      int i = 1;
      for (;;)
      {
        j = i;
        if (!((Enumeration)localObject).hasMoreElements()) {
          break;
        }
        if (i != 0) {
          i = 0;
        } else {
          localStringBuilder.append(' ');
        }
        localStringBuilder.append((String)((Enumeration)localObject).nextElement());
      }
    }
    int j = 1;
    if ((j != 0) && (localStringBuilder.length() > 0)) {
      localStringBuilder.setLength(localStringBuilder.length() - 1);
    }
    return localStringBuilder.toString();
  }
  
  public static final class a
  {
    public static final a b = new a(1);
    public static final a c = new a(2);
    public static final a d = new a(4);
    public static final a e = new a(8);
    public static final a f = new a(16);
    public static final a g = new a(32);
    public static final a h = new a(-2147483648);
    private int a;
    
    private a(int paramInt)
    {
      this.a = paramInt;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.Flags
 * JD-Core Version:    0.7.0.1
 */