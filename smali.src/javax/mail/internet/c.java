package javax.mail.internet;

import com.sun.mail.util.e;
import com.sun.mail.util.h;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import javax.mail.MessagingException;

public class c
{
  private static final boolean b = h.b("mail.mime.ignorewhitespacelines", false);
  protected List<a> a;
  
  public c()
  {
    ArrayList localArrayList = new ArrayList(40);
    this.a = localArrayList;
    localArrayList.add(new a("Return-Path", null));
    this.a.add(new a("Received", null));
    this.a.add(new a("Resent-Date", null));
    this.a.add(new a("Resent-From", null));
    this.a.add(new a("Resent-Sender", null));
    this.a.add(new a("Resent-To", null));
    this.a.add(new a("Resent-Cc", null));
    this.a.add(new a("Resent-Bcc", null));
    this.a.add(new a("Resent-Message-Id", null));
    this.a.add(new a("Date", null));
    this.a.add(new a("From", null));
    this.a.add(new a("Sender", null));
    this.a.add(new a("Reply-To", null));
    this.a.add(new a("To", null));
    this.a.add(new a("Cc", null));
    this.a.add(new a("Bcc", null));
    this.a.add(new a("Message-Id", null));
    this.a.add(new a("In-Reply-To", null));
    this.a.add(new a("References", null));
    this.a.add(new a("Subject", null));
    this.a.add(new a("Comments", null));
    this.a.add(new a("Keywords", null));
    this.a.add(new a("Errors-To", null));
    this.a.add(new a("MIME-Version", null));
    this.a.add(new a("Content-Type", null));
    this.a.add(new a("Content-Transfer-Encoding", null));
    this.a.add(new a("Content-MD5", null));
    this.a.add(new a(":", null));
    this.a.add(new a("Content-Length", null));
    this.a.add(new a("Status", null));
  }
  
  public c(InputStream paramInputStream)
    throws MessagingException
  {
    this(paramInputStream, false);
  }
  
  public c(InputStream paramInputStream, boolean paramBoolean)
    throws MessagingException
  {
    this.a = new ArrayList(40);
    f(paramInputStream, paramBoolean);
  }
  
  private static final boolean d(String paramString)
  {
    boolean bool;
    if ((paramString.length() != 0) && ((!b) || (paramString.trim().length() != 0))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public void a(String paramString)
  {
    try
    {
      int i = paramString.charAt(0);
      Object localObject1;
      Object localObject2;
      if ((i != 32) && (i != 9))
      {
        localObject1 = this.a;
        localObject2 = new javax/mail/internet/c$a;
        ((a)localObject2).<init>(paramString);
        ((List)localObject1).add(localObject2);
      }
      else
      {
        localObject2 = this.a;
        localObject1 = (a)((List)localObject2).get(((List)localObject2).size() - 1);
        localObject2 = new java/lang/StringBuilder;
        ((StringBuilder)localObject2).<init>();
        ((StringBuilder)localObject2).append(((a)localObject1).c);
        ((StringBuilder)localObject2).append("\r\n");
        ((StringBuilder)localObject2).append(paramString);
        ((a)localObject1).c = ((StringBuilder)localObject2).toString();
      }
      label119:
      return;
    }
    catch (StringIndexOutOfBoundsException|NoSuchElementException paramString)
    {
      break label119;
    }
  }
  
  public String b(String paramString1, String paramString2)
  {
    String[] arrayOfString = c(paramString1);
    if (arrayOfString == null) {
      return null;
    }
    int i = arrayOfString.length;
    int j = 1;
    if ((i != 1) && (paramString2 != null))
    {
      paramString1 = new StringBuilder(arrayOfString[0]);
      while (j < arrayOfString.length)
      {
        paramString1.append(paramString2);
        paramString1.append(arrayOfString[j]);
        j++;
      }
      return paramString1.toString();
    }
    return arrayOfString[0];
  }
  
  public String[] c(String paramString)
  {
    Iterator localIterator = this.a.iterator();
    ArrayList localArrayList = new ArrayList();
    while (localIterator.hasNext())
    {
      a locala = (a)localIterator.next();
      if ((paramString.equalsIgnoreCase(locala.a())) && (locala.c != null)) {
        localArrayList.add(locala.b());
      }
    }
    if (localArrayList.size() == 0) {
      return null;
    }
    return (String[])localArrayList.toArray(new String[localArrayList.size()]);
  }
  
  public void e(InputStream paramInputStream)
    throws MessagingException
  {
    f(paramInputStream, false);
  }
  
  public void f(InputStream paramInputStream, boolean paramBoolean)
    throws MessagingException
  {
    e locale = new e(paramInputStream, paramBoolean);
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 1;
    Object localObject = null;
    try
    {
      for (;;)
      {
        String str1 = locale.c();
        if ((str1 != null) && ((str1.startsWith(" ")) || (str1.startsWith("\t"))))
        {
          paramInputStream = (InputStream)localObject;
          if (localObject != null)
          {
            localStringBuilder.append((String)localObject);
            paramInputStream = null;
          }
          if (i != 0)
          {
            String str2 = str1.trim();
            localObject = paramInputStream;
            if (str2.length() > 0)
            {
              localStringBuilder.append(str2);
              localObject = paramInputStream;
            }
          }
          else
          {
            if (localStringBuilder.length() > 0) {
              localStringBuilder.append("\r\n");
            }
            localStringBuilder.append(str1);
            localObject = paramInputStream;
          }
        }
        else
        {
          if (localObject != null)
          {
            a((String)localObject);
          }
          else if (localStringBuilder.length() > 0)
          {
            a(localStringBuilder.toString());
            localStringBuilder.setLength(0);
          }
          localObject = str1;
        }
        if (str1 == null) {
          break;
        }
        paramBoolean = d(str1);
        if (paramBoolean) {
          break;
        }
        i = 0;
      }
      return;
    }
    catch (IOException paramInputStream)
    {
      throw new MessagingException("Error in input stream", paramInputStream);
    }
  }
  
  protected static final class a
    extends javax.mail.c
  {
    String c;
    
    public a(String paramString)
    {
      super("");
      int i = paramString.indexOf(':');
      if (i < 0) {
        this.a = paramString.trim();
      } else {
        this.a = paramString.substring(0, i).trim();
      }
      this.c = paramString;
    }
    
    public a(String paramString1, String paramString2)
    {
      super("");
      if (paramString2 != null)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append(paramString1);
        localStringBuilder.append(": ");
        localStringBuilder.append(paramString2);
        this.c = localStringBuilder.toString();
      }
      else
      {
        this.c = null;
      }
    }
    
    public String b()
    {
      int i = this.c.indexOf(':');
      int j = i;
      if (i < 0) {
        return this.c;
      }
      int k;
      do
      {
        do
        {
          do
          {
            do
            {
              i = j + 1;
              if (i >= this.c.length()) {
                break;
              }
              k = this.c.charAt(i);
              j = i;
            } while (k == 32);
            j = i;
          } while (k == 9);
          j = i;
        } while (k == 13);
        j = i;
      } while (k == 10);
      return this.c.substring(i);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.internet.c
 * JD-Core Version:    0.7.0.1
 */