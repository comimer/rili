package com.airbnb.lottie.network;

public enum FileExtension
{
  public final String extension;
  
  static
  {
    FileExtension localFileExtension1 = new FileExtension("JSON", 0, ".json");
    JSON = localFileExtension1;
    FileExtension localFileExtension2 = new FileExtension("ZIP", 1, ".zip");
    ZIP = localFileExtension2;
    $VALUES = new FileExtension[] { localFileExtension1, localFileExtension2 };
  }
  
  private FileExtension(String paramString)
  {
    this.extension = paramString;
  }
  
  public String tempExtension()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(".temp");
    localStringBuilder.append(this.extension);
    return localStringBuilder.toString();
  }
  
  public String toString()
  {
    return this.extension;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.airbnb.lottie.network.FileExtension
 * JD-Core Version:    0.7.0.1
 */