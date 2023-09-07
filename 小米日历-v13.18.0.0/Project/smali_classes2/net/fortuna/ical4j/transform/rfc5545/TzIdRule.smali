.class public Lnet/fortuna/ical4j/transform/rfc5545/TzIdRule;
.super Ljava/lang/Object;
.source "TzIdRule.java"

# interfaces
.implements Lnet/fortuna/ical4j/transform/rfc5545/Rfc5545PropertyRule;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/fortuna/ical4j/transform/rfc5545/Rfc5545PropertyRule<",
        "Lnet/fortuna/ical4j/model/property/TzId;",
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
    check-cast p1, Lnet/fortuna/ical4j/model/property/TzId;

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/transform/rfc5545/TzIdRule;->applyTo(Lnet/fortuna/ical4j/model/property/TzId;)V

    return-void
.end method

.method public applyTo(Lnet/fortuna/ical4j/model/property/TzId;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lnet/fortuna/ical4j/transform/rfc5545/TzHelper;->correctTzValueOf(Lnet/fortuna/ical4j/model/property/TzId;)V

    return-void
.end method

.method public getSupportedType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lnet/fortuna/ical4j/model/property/TzId;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lnet/fortuna/ical4j/model/property/TzId;

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
