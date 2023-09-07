.class public final Lorg/apache/commons/collections4/comparators/BooleanComparator;
.super Ljava/lang/Object;
.source "BooleanComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final FALSE_FIRST:Lorg/apache/commons/collections4/comparators/BooleanComparator;

.field private static final TRUE_FIRST:Lorg/apache/commons/collections4/comparators/BooleanComparator;

.field private static final serialVersionUID:J = 0x19659e67a6639c01L


# instance fields
.field private trueFirst:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/collections4/comparators/BooleanComparator;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/comparators/BooleanComparator;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/apache/commons/collections4/comparators/BooleanComparator;->TRUE_FIRST:Lorg/apache/commons/collections4/comparators/BooleanComparator;

    .line 8
    .line 9
    new-instance v0, Lorg/apache/commons/collections4/comparators/BooleanComparator;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/comparators/BooleanComparator;-><init>(Z)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lorg/apache/commons/collections4/comparators/BooleanComparator;->FALSE_FIRST:Lorg/apache/commons/collections4/comparators/BooleanComparator;

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
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/comparators/BooleanComparator;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lorg/apache/commons/collections4/comparators/BooleanComparator;->trueFirst:Z

    return-void
.end method

.method public static booleanComparator(Z)Lorg/apache/commons/collections4/comparators/BooleanComparator;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lorg/apache/commons/collections4/comparators/BooleanComparator;->TRUE_FIRST:Lorg/apache/commons/collections4/comparators/BooleanComparator;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object p0, Lorg/apache/commons/collections4/comparators/BooleanComparator;->FALSE_FIRST:Lorg/apache/commons/collections4/comparators/BooleanComparator;

    .line 7
    .line 8
    :goto_0
    return-object p0
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

.method public static getFalseFirstComparator()Lorg/apache/commons/collections4/comparators/BooleanComparator;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/collections4/comparators/BooleanComparator;->FALSE_FIRST:Lorg/apache/commons/collections4/comparators/BooleanComparator;

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

.method public static getTrueFirstComparator()Lorg/apache/commons/collections4/comparators/BooleanComparator;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/collections4/comparators/BooleanComparator;->TRUE_FIRST:Lorg/apache/commons/collections4/comparators/BooleanComparator;

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


# virtual methods
.method public compare(Ljava/lang/Boolean;Ljava/lang/Boolean;)I
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    xor-int/2addr p2, p1

    if-eqz p2, :cond_1

    .line 4
    iget-boolean p2, p0, Lorg/apache/commons/collections4/comparators/BooleanComparator;->trueFirst:Z

    xor-int/2addr p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/comparators/BooleanComparator;->compare(Ljava/lang/Boolean;Ljava/lang/Boolean;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-eq p0, p1, :cond_1

    .line 2
    .line 3
    instance-of v0, p1, Lorg/apache/commons/collections4/comparators/BooleanComparator;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lorg/apache/commons/collections4/comparators/BooleanComparator;->trueFirst:Z

    .line 8
    .line 9
    check-cast p1, Lorg/apache/commons/collections4/comparators/BooleanComparator;

    .line 10
    .line 11
    iget-boolean p1, p1, Lorg/apache/commons/collections4/comparators/BooleanComparator;->trueFirst:Z

    .line 12
    .line 13
    if-ne v0, p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 19
    :goto_1
    return p1
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

.method public hashCode()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/collections4/comparators/BooleanComparator;->trueFirst:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const v0, -0x1c7dc2fe

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const v0, 0x1c7dc2fe

    .line 10
    .line 11
    .line 12
    :goto_0
    return v0
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

.method public sortsTrueFirst()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/collections4/comparators/BooleanComparator;->trueFirst:Z

    .line 2
    .line 3
    return v0
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
