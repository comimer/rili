package javax.activation;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Locale;
import o7.j;

public class MimeType
  implements Externalizable
{
  private static final String TSPECIALS = "()<>@,;:/[]?=\\\"";
  private j parameters;
  private String primaryType;
  private String subType;
  
  public MimeType()
  {
    this.primaryType = "application";
    this.subType = "*";
    this.parameters = new j();
  }
  
  public MimeType(String paramString)
    throws MimeTypeParseException
  {
    parse(paramString);
  }
  
  public MimeType(String paramString1, String paramString2)
    throws MimeTypeParseException
  {
    if (isValidToken(paramString1))
    {
      Locale localLocale = Locale.ENGLISH;
      this.primaryType = paramString1.toLowerCase(localLocale);
      if (isValidToken(paramString2))
      {
        this.subType = paramString2.toLowerCase(localLocale);
        this.parameters = new j();
        return;
      }
      throw new MimeTypeParseException("Sub type is invalid.");
    }
    throw new MimeTypeParseException("Primary type is invalid.");
  }
  
  private static boolean isTokenChar(char paramChar)
  {
    boolean bool;
    if ((paramChar > ' ') && (paramChar < '') && ("()<>@,;:/[]?=\\\"".indexOf(paramChar) < 0)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private boolean isValidToken(String paramString)
  {
    int i = paramString.length();
    if (i > 0)
    {
      for (int j = 0; j < i; j++) {
        if (!isTokenChar(paramString.charAt(j))) {
          return false;
        }
      }
      return true;
    }
    return false;
  }
  
  private void parse(String paramString)
    throws MimeTypeParseException
  {
    int i = paramString.indexOf('/');
    int j = paramString.indexOf(';');
    if ((i < 0) && (j < 0)) {
      throw new MimeTypeParseException("Unable to find a sub type.");
    }
    if ((i < 0) && (j >= 0)) {
      throw new MimeTypeParseException("Unable to find a sub type.");
    }
    Object localObject1;
    Object localObject2;
    if ((i >= 0) && (j < 0))
    {
      localObject1 = paramString.substring(0, i).trim();
      localObject2 = Locale.ENGLISH;
      this.primaryType = ((String)localObject1).toLowerCase((Locale)localObject2);
      this.subType = paramString.substring(i + 1).trim().toLowerCase((Locale)localObject2);
      this.parameters = new j();
    }
    else
    {
      if (i >= j) {
        break label235;
      }
      localObject2 = paramString.substring(0, i).trim();
      localObject1 = Locale.ENGLISH;
      this.primaryType = ((String)localObject2).toLowerCase((Locale)localObject1);
      this.subType = paramString.substring(i + 1, j).trim().toLowerCase((Locale)localObject1);
      this.parameters = new j(paramString.substring(j));
    }
    if (isValidToken(this.primaryType))
    {
      if (isValidToken(this.subType)) {
        return;
      }
      throw new MimeTypeParseException("Sub type is invalid.");
    }
    throw new MimeTypeParseException("Primary type is invalid.");
    label235:
    throw new MimeTypeParseException("Unable to find a sub type.");
  }
  
  public String getBaseType()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.primaryType);
    localStringBuilder.append("/");
    localStringBuilder.append(this.subType);
    return localStringBuilder.toString();
  }
  
  public String getParameter(String paramString)
  {
    return this.parameters.a(paramString);
  }
  
  public j getParameters()
  {
    return this.parameters;
  }
  
  public String getPrimaryType()
  {
    return this.primaryType;
  }
  
  public String getSubType()
  {
    return this.subType;
  }
  
  public boolean match(String paramString)
    throws MimeTypeParseException
  {
    return match(new MimeType(paramString));
  }
  
  public boolean match(MimeType paramMimeType)
  {
    boolean bool;
    if ((this.primaryType.equals(paramMimeType.getPrimaryType())) && ((this.subType.equals("*")) || (paramMimeType.getSubType().equals("*")) || (this.subType.equals(paramMimeType.getSubType())))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public void readExternal(ObjectInput paramObjectInput)
    throws IOException, ClassNotFoundException
  {
    try
    {
      parse(paramObjectInput.readUTF());
      return;
    }
    catch (MimeTypeParseException paramObjectInput)
    {
      throw new IOException(paramObjectInput.toString());
    }
  }
  
  public void removeParameter(String paramString)
  {
    this.parameters.e(paramString);
  }
  
  public void setParameter(String paramString1, String paramString2)
  {
    this.parameters.f(paramString1, paramString2);
  }
  
  public void setPrimaryType(String paramString)
    throws MimeTypeParseException
  {
    if (isValidToken(this.primaryType))
    {
      this.primaryType = paramString.toLowerCase(Locale.ENGLISH);
      return;
    }
    throw new MimeTypeParseException("Primary type is invalid.");
  }
  
  public void setSubType(String paramString)
    throws MimeTypeParseException
  {
    if (isValidToken(this.subType))
    {
      this.subType = paramString.toLowerCase(Locale.ENGLISH);
      return;
    }
    throw new MimeTypeParseException("Sub type is invalid.");
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(getBaseType());
    localStringBuilder.append(this.parameters.toString());
    return localStringBuilder.toString();
  }
  
  public void writeExternal(ObjectOutput paramObjectOutput)
    throws IOException
  {
    paramObjectOutput.writeUTF(toString());
    paramObjectOutput.flush();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.activation.MimeType
 * JD-Core Version:    0.7.0.1
 */