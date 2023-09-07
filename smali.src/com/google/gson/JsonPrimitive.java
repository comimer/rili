package com.google.gson;

import com.google.gson.internal..Gson.Preconditions;
import com.google.gson.internal.LazilyParsedNumber;
import java.math.BigDecimal;
import java.math.BigInteger;

public final class JsonPrimitive
  extends JsonElement
{
  private static final Class<?>[] PRIMITIVE_TYPES = { Integer.TYPE, Long.TYPE, Short.TYPE, Float.TYPE, Double.TYPE, Byte.TYPE, Boolean.TYPE, Character.TYPE, Integer.class, Long.class, Short.class, Float.class, Double.class, Byte.class, Boolean.class, Character.class };
  private Object value;
  
  public JsonPrimitive(Boolean paramBoolean)
  {
    setValue(paramBoolean);
  }
  
  public JsonPrimitive(Character paramCharacter)
  {
    setValue(paramCharacter);
  }
  
  public JsonPrimitive(Number paramNumber)
  {
    setValue(paramNumber);
  }
  
  JsonPrimitive(Object paramObject)
  {
    setValue(paramObject);
  }
  
  public JsonPrimitive(String paramString)
  {
    setValue(paramString);
  }
  
  private static boolean isIntegral(JsonPrimitive paramJsonPrimitive)
  {
    paramJsonPrimitive = paramJsonPrimitive.value;
    boolean bool1 = paramJsonPrimitive instanceof Number;
    boolean bool2 = false;
    boolean bool3 = bool2;
    if (bool1)
    {
      paramJsonPrimitive = (Number)paramJsonPrimitive;
      if ((!(paramJsonPrimitive instanceof BigInteger)) && (!(paramJsonPrimitive instanceof Long)) && (!(paramJsonPrimitive instanceof Integer)) && (!(paramJsonPrimitive instanceof Short)))
      {
        bool3 = bool2;
        if (!(paramJsonPrimitive instanceof Byte)) {}
      }
      else
      {
        bool3 = true;
      }
    }
    return bool3;
  }
  
  private static boolean isPrimitiveOrString(Object paramObject)
  {
    if ((paramObject instanceof String)) {
      return true;
    }
    paramObject = paramObject.getClass();
    Class[] arrayOfClass = PRIMITIVE_TYPES;
    int i = arrayOfClass.length;
    for (int j = 0; j < i; j++) {
      if (arrayOfClass[j].isAssignableFrom(paramObject)) {
        return true;
      }
    }
    return false;
  }
  
  public JsonPrimitive deepCopy()
  {
    return this;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = true;
    boolean bool2 = true;
    boolean bool3 = true;
    if (this == paramObject) {
      return true;
    }
    if ((paramObject != null) && (JsonPrimitive.class == paramObject.getClass()))
    {
      paramObject = (JsonPrimitive)paramObject;
      if (this.value == null)
      {
        if (paramObject.value != null) {
          bool3 = false;
        }
        return bool3;
      }
      if ((isIntegral(this)) && (isIntegral(paramObject)))
      {
        if (getAsNumber().longValue() == paramObject.getAsNumber().longValue()) {
          bool3 = bool1;
        } else {
          bool3 = false;
        }
        return bool3;
      }
      Object localObject = this.value;
      if (((localObject instanceof Number)) && ((paramObject.value instanceof Number)))
      {
        double d1 = getAsNumber().doubleValue();
        double d2 = paramObject.getAsNumber().doubleValue();
        bool3 = bool2;
        if (d1 != d2) {
          if ((Double.isNaN(d1)) && (Double.isNaN(d2))) {
            bool3 = bool2;
          } else {
            bool3 = false;
          }
        }
        return bool3;
      }
      return localObject.equals(paramObject.value);
    }
    return false;
  }
  
  public BigDecimal getAsBigDecimal()
  {
    Object localObject = this.value;
    if ((localObject instanceof BigDecimal)) {
      localObject = (BigDecimal)localObject;
    } else {
      localObject = new BigDecimal(this.value.toString());
    }
    return localObject;
  }
  
  public BigInteger getAsBigInteger()
  {
    Object localObject = this.value;
    if ((localObject instanceof BigInteger)) {
      localObject = (BigInteger)localObject;
    } else {
      localObject = new BigInteger(this.value.toString());
    }
    return localObject;
  }
  
  public boolean getAsBoolean()
  {
    if (isBoolean()) {
      return getAsBooleanWrapper().booleanValue();
    }
    return Boolean.parseBoolean(getAsString());
  }
  
  Boolean getAsBooleanWrapper()
  {
    return (Boolean)this.value;
  }
  
  public byte getAsByte()
  {
    byte b1;
    byte b2;
    if (isNumber())
    {
      b1 = getAsNumber().byteValue();
      b2 = b1;
    }
    else
    {
      b1 = Byte.parseByte(getAsString());
      b2 = b1;
    }
    return b2;
  }
  
  public char getAsCharacter()
  {
    return getAsString().charAt(0);
  }
  
  public double getAsDouble()
  {
    double d;
    if (isNumber()) {
      d = getAsNumber().doubleValue();
    } else {
      d = Double.parseDouble(getAsString());
    }
    return d;
  }
  
  public float getAsFloat()
  {
    float f;
    if (isNumber()) {
      f = getAsNumber().floatValue();
    } else {
      f = Float.parseFloat(getAsString());
    }
    return f;
  }
  
  public int getAsInt()
  {
    int i;
    if (isNumber()) {
      i = getAsNumber().intValue();
    } else {
      i = Integer.parseInt(getAsString());
    }
    return i;
  }
  
  public long getAsLong()
  {
    long l;
    if (isNumber()) {
      l = getAsNumber().longValue();
    } else {
      l = Long.parseLong(getAsString());
    }
    return l;
  }
  
  public Number getAsNumber()
  {
    Object localObject = this.value;
    if ((localObject instanceof String)) {
      localObject = new LazilyParsedNumber((String)localObject);
    } else {
      localObject = (Number)localObject;
    }
    return localObject;
  }
  
  public short getAsShort()
  {
    short s1;
    short s2;
    if (isNumber())
    {
      s1 = getAsNumber().shortValue();
      s2 = s1;
    }
    else
    {
      s1 = Short.parseShort(getAsString());
      s2 = s1;
    }
    return s2;
  }
  
  public String getAsString()
  {
    if (isNumber()) {
      return getAsNumber().toString();
    }
    if (isBoolean()) {
      return getAsBooleanWrapper().toString();
    }
    return (String)this.value;
  }
  
  public int hashCode()
  {
    if (this.value == null) {
      return 31;
    }
    if (isIntegral(this)) {}
    Object localObject;
    for (long l = getAsNumber().longValue();; l = Double.doubleToLongBits(getAsNumber().doubleValue()))
    {
      return (int)(l >>> 32 ^ l);
      localObject = this.value;
      if (!(localObject instanceof Number)) {
        break;
      }
    }
    return localObject.hashCode();
  }
  
  public boolean isBoolean()
  {
    return this.value instanceof Boolean;
  }
  
  public boolean isNumber()
  {
    return this.value instanceof Number;
  }
  
  public boolean isString()
  {
    return this.value instanceof String;
  }
  
  void setValue(Object paramObject)
  {
    if ((paramObject instanceof Character))
    {
      this.value = String.valueOf(((Character)paramObject).charValue());
    }
    else
    {
      boolean bool;
      if ((!(paramObject instanceof Number)) && (!isPrimitiveOrString(paramObject))) {
        bool = false;
      } else {
        bool = true;
      }
      .Gson.Preconditions.checkArgument(bool);
      this.value = paramObject;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.gson.JsonPrimitive
 * JD-Core Version:    0.7.0.1
 */