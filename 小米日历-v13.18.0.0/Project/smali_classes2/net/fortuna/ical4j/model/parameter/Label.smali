.class public Lnet/fortuna/ical4j/model/parameter/Label;
.super Lnet/fortuna/ical4j/model/Parameter;
.source "Label.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/parameter/Label$Factory;
    }
.end annotation


# static fields
.field private static final PARAMETER_NAME:Ljava/lang/String; = "LABEL"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Label$Factory;

    .line 2
    .line 3
    invoke-direct {v0}, Lnet/fortuna/ical4j/model/parameter/Label$Factory;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "LABEL"

    .line 7
    .line 8
    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Parameter;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterFactory;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lnet/fortuna/ical4j/model/parameter/Label;->value:Ljava/lang/String;

    .line 12
    .line 13
    return-void
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
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/parameter/Label;->value:Ljava/lang/String;

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
