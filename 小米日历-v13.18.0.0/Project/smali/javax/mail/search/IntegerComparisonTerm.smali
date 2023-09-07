.class public abstract Ljavax/mail/search/IntegerComparisonTerm;
.super Ljavax/mail/search/ComparisonTerm;
.source "IntegerComparisonTerm.java"


# static fields
.field private static final serialVersionUID:J = -0x60a39325f9860814L


# instance fields
.field protected number:I


# direct methods
.method protected constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljavax/mail/search/ComparisonTerm;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Ljavax/mail/search/ComparisonTerm;->comparison:I

    .line 5
    .line 6
    iput p2, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

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
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Ljavax/mail/search/IntegerComparisonTerm;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    move-object v0, p1

    .line 8
    check-cast v0, Ljavax/mail/search/IntegerComparisonTerm;

    .line 9
    .line 10
    iget v0, v0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    .line 11
    .line 12
    iget v2, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    .line 13
    .line 14
    if-ne v0, v2, :cond_1

    .line 15
    .line 16
    invoke-super {p0, p1}, Ljavax/mail/search/ComparisonTerm;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    :cond_1
    return v1
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
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
.end method

.method public getComparison()I
    .locals 1

    .line 1
    iget v0, p0, Ljavax/mail/search/ComparisonTerm;->comparison:I

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
.end method

.method public getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

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
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    .line 2
    .line 3
    invoke-super {p0}, Ljavax/mail/search/ComparisonTerm;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/2addr v0, v1

    .line 8
    return v0
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
.end method

.method protected match(I)Z
    .locals 3

    .line 1
    iget v0, p0, Ljavax/mail/search/ComparisonTerm;->comparison:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    return v2

    .line 9
    :pswitch_0
    iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    .line 10
    .line 11
    if-lt p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v1, v2

    .line 15
    :goto_0
    return v1

    .line 16
    :pswitch_1
    iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    .line 17
    .line 18
    if-le p1, v0, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move v1, v2

    .line 22
    :goto_1
    return v1

    .line 23
    :pswitch_2
    iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    .line 24
    .line 25
    if-eq p1, v0, :cond_2

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_2
    move v1, v2

    .line 29
    :goto_2
    return v1

    .line 30
    :pswitch_3
    iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    .line 31
    .line 32
    if-ne p1, v0, :cond_3

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_3
    move v1, v2

    .line 36
    :goto_3
    return v1

    .line 37
    :pswitch_4
    iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    .line 38
    .line 39
    if-ge p1, v0, :cond_4

    .line 40
    .line 41
    goto :goto_4

    .line 42
    :cond_4
    move v1, v2

    .line 43
    :goto_4
    return v1

    .line 44
    :pswitch_5
    iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    .line 45
    .line 46
    if-gt p1, v0, :cond_5

    .line 47
    .line 48
    goto :goto_5

    .line 49
    :cond_5
    move v1, v2

    .line 50
    :goto_5
    return v1

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
.end method
