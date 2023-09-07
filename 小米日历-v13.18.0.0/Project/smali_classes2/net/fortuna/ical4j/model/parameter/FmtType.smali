.class public Lnet/fortuna/ical4j/model/parameter/FmtType;
.super Lnet/fortuna/ical4j/model/Parameter;
.source "FmtType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/parameter/FmtType$Factory;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x79a36a248a6c9338L


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/FmtType$Factory;

    .line 2
    .line 3
    invoke-direct {v0}, Lnet/fortuna/ical4j/model/parameter/FmtType$Factory;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "FMTTYPE"

    .line 7
    .line 8
    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Parameter;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterFactory;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lnet/fortuna/ical4j/util/Strings;->unquote(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lnet/fortuna/ical4j/model/parameter/FmtType;->value:Ljava/lang/String;

    .line 16
    .line 17
    return-void
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
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/parameter/FmtType;->value:Ljava/lang/String;

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
