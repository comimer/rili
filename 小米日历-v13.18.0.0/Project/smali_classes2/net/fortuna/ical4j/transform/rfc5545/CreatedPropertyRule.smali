.class public Lnet/fortuna/ical4j/transform/rfc5545/CreatedPropertyRule;
.super Ljava/lang/Object;
.source "CreatedPropertyRule.java"

# interfaces
.implements Lnet/fortuna/ical4j/transform/rfc5545/Rfc5545PropertyRule;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/fortuna/ical4j/transform/rfc5545/Rfc5545PropertyRule<",
        "Lnet/fortuna/ical4j/model/property/Created;",
        ">;"
    }
.end annotation


# static fields
.field private static final UTC_MARKER:Ljava/lang/String; = "Z"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic applyTo(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lnet/fortuna/ical4j/model/property/Created;

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/transform/rfc5545/CreatedPropertyRule;->applyTo(Lnet/fortuna/ical4j/model/property/Created;)V

    return-void
.end method

.method public applyTo(Lnet/fortuna/ical4j/model/property/Created;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/property/DateProperty;->isUtc()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/property/DateProperty;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/property/DateProperty;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/property/DateProperty;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public getSupportedType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lnet/fortuna/ical4j/model/property/Created;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lnet/fortuna/ical4j/model/property/Created;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
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
