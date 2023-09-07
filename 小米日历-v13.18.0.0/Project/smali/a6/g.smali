.class public abstract La6/g;
.super La6/e;
.source "PassportSimpleRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La6/g$b;,
        La6/g$a;
    }
.end annotation


# instance fields
.field protected final a:La6/f;


# direct methods
.method protected constructor <init>(La6/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, La6/e;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, La6/g;->a:La6/f;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string v0, "arguments can\'t be null"

    .line 12
    .line 13
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method
