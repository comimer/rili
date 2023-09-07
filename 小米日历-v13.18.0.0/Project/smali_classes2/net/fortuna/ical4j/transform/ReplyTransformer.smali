.class public Lnet/fortuna/ical4j/transform/ReplyTransformer;
.super Lnet/fortuna/ical4j/transform/AbstractMethodTransformer;
.source "ReplyTransformer.java"


# direct methods
.method public constructor <init>(Lnet/fortuna/ical4j/util/UidGenerator;)V
    .locals 3

    .line 1
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->REPLY:Lnet/fortuna/ical4j/model/property/Method;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {p0, v0, p1, v1, v2}, Lnet/fortuna/ical4j/transform/AbstractMethodTransformer;-><init>(Lnet/fortuna/ical4j/model/property/Method;Lnet/fortuna/ical4j/util/UidGenerator;ZZ)V

    .line 6
    .line 7
    .line 8
    return-void
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
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method


# virtual methods
.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lnet/fortuna/ical4j/model/Calendar;

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/transform/ReplyTransformer;->transform(Lnet/fortuna/ical4j/model/Calendar;)Lnet/fortuna/ical4j/model/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public transform(Lnet/fortuna/ical4j/model/Calendar;)Lnet/fortuna/ical4j/model/Calendar;
    .locals 2

    .line 2
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->REQUEST:Lnet/fortuna/ical4j/model/property/Method;

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->getMethod()Lnet/fortuna/ical4j/model/property/Method;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-super {p0, p1}, Lnet/fortuna/ical4j/transform/AbstractMethodTransformer;->transform(Lnet/fortuna/ical4j/model/Calendar;)Lnet/fortuna/ical4j/model/Calendar;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expecting REQUEST method in source"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
