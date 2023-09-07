.class public Lnet/fortuna/ical4j/model/component/Standard;
.super Lnet/fortuna/ical4j/model/component/Observance;
.source "Standard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/component/Standard$Factory;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x41ee9f7c5cf015d7L


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "STANDARD"

    .line 1
    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/component/Observance;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/PropertyList;)V
    .locals 1

    const-string v0, "STANDARD"

    .line 2
    invoke-direct {p0, v0, p1}, Lnet/fortuna/ical4j/model/component/Observance;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    return-void
.end method
