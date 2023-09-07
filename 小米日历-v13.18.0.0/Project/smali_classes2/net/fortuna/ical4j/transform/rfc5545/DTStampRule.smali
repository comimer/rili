.class public Lnet/fortuna/ical4j/transform/rfc5545/DTStampRule;
.super Ljava/lang/Object;
.source "DTStampRule.java"

# interfaces
.implements Lnet/fortuna/ical4j/transform/rfc5545/Rfc5545PropertyRule;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/fortuna/ical4j/transform/rfc5545/Rfc5545PropertyRule<",
        "Lnet/fortuna/ical4j/model/property/DtStamp;",
        ">;"
    }
.end annotation


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
    check-cast p1, Lnet/fortuna/ical4j/model/property/DtStamp;

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/transform/rfc5545/DTStampRule;->applyTo(Lnet/fortuna/ical4j/model/property/DtStamp;)V

    return-void
.end method

.method public applyTo(Lnet/fortuna/ical4j/model/property/DtStamp;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/property/DateProperty;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/property/DateProperty;->isUtc()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/property/DateProperty;->setUtc(Z)V

    :cond_0
    return-void
.end method

.method public getSupportedType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lnet/fortuna/ical4j/model/property/DtStamp;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lnet/fortuna/ical4j/model/property/DtStamp;

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
