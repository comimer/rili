package com.miui.maml.data;

import org.json.JSONArray;
import org.json.JSONObject;

public enum VariableType
{
  public final Class<?> mTypeClass;
  
  static
  {
    VariableType localVariableType1 = new VariableType("INVALID", 0, null);
    INVALID = localVariableType1;
    VariableType localVariableType2 = new VariableType("NUM", 1, Double.TYPE);
    NUM = localVariableType2;
    VariableType localVariableType3 = new VariableType("STR", 2, String.class);
    STR = localVariableType3;
    VariableType localVariableType4 = new VariableType("OBJ", 3, Object.class);
    OBJ = localVariableType4;
    VariableType localVariableType5 = new VariableType("JSONO", 4, JSONObject.class);
    JSONO = localVariableType5;
    VariableType localVariableType6 = new VariableType("JSONA", 5, JSONArray.class);
    JSONA = localVariableType6;
    VariableType localVariableType7 = new VariableType("NUM_ARR", 6, Double.TYPE);
    NUM_ARR = localVariableType7;
    VariableType localVariableType8 = new VariableType("DOUBLE_ARR", 7, Double.TYPE);
    DOUBLE_ARR = localVariableType8;
    VariableType localVariableType9 = new VariableType("FLOAT_ARR", 8, Float.TYPE);
    FLOAT_ARR = localVariableType9;
    VariableType localVariableType10 = new VariableType("INT_ARR", 9, Integer.TYPE);
    INT_ARR = localVariableType10;
    VariableType localVariableType11 = new VariableType("SHORT_ARR", 10, Short.TYPE);
    SHORT_ARR = localVariableType11;
    VariableType localVariableType12 = new VariableType("BYTE_ARR", 11, Byte.TYPE);
    BYTE_ARR = localVariableType12;
    VariableType localVariableType13 = new VariableType("LONG_ARR", 12, Long.TYPE);
    LONG_ARR = localVariableType13;
    VariableType localVariableType14 = new VariableType("BOOLEAN_ARR", 13, Boolean.TYPE);
    BOOLEAN_ARR = localVariableType14;
    VariableType localVariableType15 = new VariableType("CHAR_ARR", 14, Character.TYPE);
    CHAR_ARR = localVariableType15;
    VariableType localVariableType16 = new VariableType("STR_ARR", 15, String.class);
    STR_ARR = localVariableType16;
    VariableType localVariableType17 = new VariableType("OBJ_ARR", 16, Object.class);
    OBJ_ARR = localVariableType17;
    $VALUES = new VariableType[] { localVariableType1, localVariableType2, localVariableType3, localVariableType4, localVariableType5, localVariableType6, localVariableType7, localVariableType8, localVariableType9, localVariableType10, localVariableType11, localVariableType12, localVariableType13, localVariableType14, localVariableType15, localVariableType16, localVariableType17 };
  }
  
  private VariableType(Class<?> paramClass)
  {
    this.mTypeClass = paramClass;
  }
  
  public static VariableType parseType(String paramString)
  {
    if ("number".equalsIgnoreCase(paramString)) {
      return NUM;
    }
    if ("string".equalsIgnoreCase(paramString)) {
      return STR;
    }
    if ("object".equalsIgnoreCase(paramString)) {
      return OBJ;
    }
    if ("jsonO".equalsIgnoreCase(paramString)) {
      return JSONO;
    }
    if ("jsonA".equalsIgnoreCase(paramString)) {
      return JSONA;
    }
    if ("number[]".equalsIgnoreCase(paramString)) {
      return NUM_ARR;
    }
    if ("double[]".equalsIgnoreCase(paramString)) {
      return DOUBLE_ARR;
    }
    if ("float[]".equalsIgnoreCase(paramString)) {
      return FLOAT_ARR;
    }
    if ("int[]".equalsIgnoreCase(paramString)) {
      return INT_ARR;
    }
    if ("short[]".equalsIgnoreCase(paramString)) {
      return SHORT_ARR;
    }
    if ("byte[]".equalsIgnoreCase(paramString)) {
      return BYTE_ARR;
    }
    if ("long[]".equalsIgnoreCase(paramString)) {
      return LONG_ARR;
    }
    if ("boolean[]".equalsIgnoreCase(paramString)) {
      return BOOLEAN_ARR;
    }
    if ("char[]".equalsIgnoreCase(paramString)) {
      return CHAR_ARR;
    }
    if ("string[]".equalsIgnoreCase(paramString)) {
      return STR_ARR;
    }
    if ("object[]".equalsIgnoreCase(paramString)) {
      return OBJ_ARR;
    }
    return NUM;
  }
  
  public boolean isArray()
  {
    boolean bool;
    if ((ordinal() >= NUM_ARR.ordinal()) && (ordinal() <= OBJ_ARR.ordinal())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean isNumber()
  {
    boolean bool;
    if (this == NUM) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean isNumberArray()
  {
    boolean bool;
    if ((ordinal() >= NUM_ARR.ordinal()) && (ordinal() <= CHAR_ARR.ordinal())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean isNumberOrStringArray()
  {
    boolean bool;
    if ((ordinal() >= NUM_ARR.ordinal()) && (ordinal() <= STR_ARR.ordinal())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.data.VariableType
 * JD-Core Version:    0.7.0.1
 */