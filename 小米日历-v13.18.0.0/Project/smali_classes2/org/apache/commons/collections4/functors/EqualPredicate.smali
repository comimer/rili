.class public final Lorg/apache/commons/collections4/functors/EqualPredicate;
.super Ljava/lang/Object;
.source "EqualPredicate.java"

# interfaces
.implements Lhc/x;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lhc/x<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4e2f2937b0cc6c91L


# instance fields
.field private final equator:Lhc/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhc/g<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final iValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/functors/EqualPredicate;-><init>(Ljava/lang/Object;Lhc/g;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lhc/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lhc/g<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/apache/commons/collections4/functors/EqualPredicate;->iValue:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lorg/apache/commons/collections4/functors/EqualPredicate;->equator:Lhc/g;

    return-void
.end method

.method public static equalPredicate(Ljava/lang/Object;)Lhc/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lhc/x<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lorg/apache/commons/collections4/functors/NullPredicate;->nullPredicate()Lhc/x;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/functors/EqualPredicate;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/functors/EqualPredicate;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static equalPredicate(Ljava/lang/Object;Lhc/g;)Lhc/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lhc/g<",
            "TT;>;)",
            "Lhc/x<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 3
    invoke-static {}, Lorg/apache/commons/collections4/functors/NullPredicate;->nullPredicate()Lhc/x;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/functors/EqualPredicate;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/functors/EqualPredicate;-><init>(Ljava/lang/Object;Lhc/g;)V

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/EqualPredicate;->equator:Lhc/g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lorg/apache/commons/collections4/functors/EqualPredicate;->iValue:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-interface {v0, v1, p1}, Lhc/g;->equate(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/EqualPredicate;->iValue:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
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

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/EqualPredicate;->iValue:Ljava/lang/Object;

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
