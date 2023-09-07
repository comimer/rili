.class public Lnet/fortuna/ical4j/transform/command/MethodUpdate;
.super Ljava/lang/Object;
.source "MethodUpdate.java"

# interfaces
.implements Lnet/fortuna/ical4j/transform/Transformer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/fortuna/ical4j/transform/Transformer<",
        "Lnet/fortuna/ical4j/model/Calendar;",
        ">;"
    }
.end annotation


# instance fields
.field private final newMethod:Lnet/fortuna/ical4j/model/property/Method;


# direct methods
.method public constructor <init>(Lnet/fortuna/ical4j/model/property/Method;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/fortuna/ical4j/transform/command/MethodUpdate;->newMethod:Lnet/fortuna/ical4j/model/property/Method;

    .line 5
    .line 6
    return-void
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

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/transform/command/MethodUpdate;->transform(Lnet/fortuna/ical4j/model/Calendar;)Lnet/fortuna/ical4j/model/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public transform(Lnet/fortuna/ical4j/model/Calendar;)Lnet/fortuna/ical4j/model/Calendar;
    .locals 2

    .line 2
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    const-string v1, "METHOD"

    .line 3
    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/Property;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->remove(Lnet/fortuna/ical4j/model/Property;)Z

    .line 5
    :cond_0
    iget-object v1, p0, Lnet/fortuna/ical4j/transform/command/MethodUpdate;->newMethod:Lnet/fortuna/ical4j/model/property/Method;

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    return-object p1
.end method
