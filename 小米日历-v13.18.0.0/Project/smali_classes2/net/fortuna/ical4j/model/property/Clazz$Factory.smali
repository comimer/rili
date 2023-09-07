.class public Lnet/fortuna/ical4j/model/property/Clazz$Factory;
.super Lnet/fortuna/ical4j/model/Content$Factory;
.source "Clazz.java"

# interfaces
.implements Lnet/fortuna/ical4j/model/PropertyFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/model/property/Clazz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/fortuna/ical4j/model/Content$Factory;",
        "Lnet/fortuna/ical4j/model/PropertyFactory<",
        "Lnet/fortuna/ical4j/model/property/Clazz;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "CLASS"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/Content$Factory;-><init>([Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method


# virtual methods
.method public bridge synthetic createProperty()Lnet/fortuna/ical4j/model/Property;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Clazz$Factory;->createProperty()Lnet/fortuna/ical4j/model/property/Clazz;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createProperty(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lnet/fortuna/ical4j/model/property/Clazz$Factory;->createProperty(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)Lnet/fortuna/ical4j/model/property/Clazz;

    move-result-object p1

    return-object p1
.end method

.method public createProperty()Lnet/fortuna/ical4j/model/property/Clazz;
    .locals 1

    .line 7
    new-instance v0, Lnet/fortuna/ical4j/model/property/Clazz;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Clazz;-><init>()V

    return-object v0
.end method

.method public createProperty(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)Lnet/fortuna/ical4j/model/property/Clazz;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 3
    sget-object v0, Lnet/fortuna/ical4j/model/property/Clazz;->CONFIDENTIAL:Lnet/fortuna/ical4j/model/property/Clazz;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/Clazz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lnet/fortuna/ical4j/model/property/Clazz;->PRIVATE:Lnet/fortuna/ical4j/model/property/Clazz;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/Clazz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lnet/fortuna/ical4j/model/property/Clazz;->PUBLIC:Lnet/fortuna/ical4j/model/property/Clazz;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/Clazz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    new-instance v0, Lnet/fortuna/ical4j/model/property/Clazz;

    invoke-direct {v0, p1, p2}, Lnet/fortuna/ical4j/model/property/Clazz;-><init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
