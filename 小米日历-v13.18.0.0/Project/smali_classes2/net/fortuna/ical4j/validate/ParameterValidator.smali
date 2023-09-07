.class public final Lnet/fortuna/ical4j/validate/ParameterValidator;
.super Ljava/lang/Object;
.source "ParameterValidator.java"


# static fields
.field public static final ASSERT_NONE_MESSAGE:Ljava/lang/String; = "Parameter [{0}] is not applicable"

.field private static final ASSERT_NULL_OR_EQUAL_MESSAGE:Ljava/lang/String; = "Parameter [{0}] is invalid"

.field public static final ASSERT_ONE_MESSAGE:Ljava/lang/String; = "Parameter [{0}] must be specified once"

.field public static final ASSERT_ONE_OR_LESS_MESSAGE:Ljava/lang/String; = "Parameter [{0}] must only be specified once"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
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

.method public static synthetic a(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)Z
    .locals 0

    invoke-static {p0, p1}, Lnet/fortuna/ical4j/validate/ParameterValidator;->lambda$assertOne$1(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)Z

    move-result p0

    return p0
.end method

.method public static assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/validate/ValidationException;
        }
    .end annotation

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/validate/r;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lnet/fortuna/ical4j/validate/r;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object p0, v1, v2

    .line 11
    .line 12
    const-string p0, "Parameter [{0}] is not applicable"

    .line 13
    .line 14
    invoke-static {v0, p0, v2, p1, v1}, Lnet/fortuna/ical4j/validate/Validator;->assertFalse(Ljava/util/function/Predicate;Ljava/lang/String;ZLjava/lang/Object;[Ljava/lang/Object;)V

    .line 15
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
.end method

.method public static assertNullOrEqual(Lnet/fortuna/ical4j/model/Parameter;Lnet/fortuna/ical4j/model/ParameterList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/validate/ValidationException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Parameter;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/ParameterList;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/Parameter;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Lnet/fortuna/ical4j/validate/ValidationException;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    new-array v0, v0, [Ljava/lang/Object;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    aput-object p1, v0, v1

    .line 25
    .line 26
    const-string p1, "Parameter [{0}] is invalid"

    .line 27
    .line 28
    invoke-direct {p0, p1, v0}, Lnet/fortuna/ical4j/validate/ValidationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    throw p0

    .line 32
    :cond_1
    :goto_0
    return-void
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
.end method

.method public static assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/validate/ValidationException;
        }
    .end annotation

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/validate/p;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lnet/fortuna/ical4j/validate/p;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object p0, v1, v2

    .line 11
    .line 12
    const-string p0, "Parameter [{0}] must be specified once"

    .line 13
    .line 14
    invoke-static {v0, p0, v2, p1, v1}, Lnet/fortuna/ical4j/validate/Validator;->assertFalse(Ljava/util/function/Predicate;Ljava/lang/String;ZLjava/lang/Object;[Ljava/lang/Object;)V

    .line 15
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
.end method

.method public static assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/validate/ValidationException;
        }
    .end annotation

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/validate/q;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lnet/fortuna/ical4j/validate/q;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object p0, v1, v2

    .line 11
    .line 12
    const-string p0, "Parameter [{0}] must only be specified once"

    .line 13
    .line 14
    invoke-static {v0, p0, v2, p1, v1}, Lnet/fortuna/ical4j/validate/Validator;->assertFalse(Ljava/util/function/Predicate;Ljava/lang/String;ZLjava/lang/Object;[Ljava/lang/Object;)V

    .line 15
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
.end method

.method public static synthetic b(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)Z
    .locals 0

    invoke-static {p0, p1}, Lnet/fortuna/ical4j/validate/ParameterValidator;->lambda$assertNone$2(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)Z
    .locals 0

    invoke-static {p0, p1}, Lnet/fortuna/ical4j/validate/ParameterValidator;->lambda$assertOneOrLess$0(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$assertNone$2(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lnet/fortuna/ical4j/model/ParameterList;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
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
.end method

.method private static synthetic lambda$assertOne$1(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lnet/fortuna/ical4j/model/ParameterList;->getParameters(Ljava/lang/String;)Lnet/fortuna/ical4j/model/ParameterList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/ParameterList;->size()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 p1, 0x1

    .line 10
    if-eq p0, p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
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
.end method

.method private static synthetic lambda$assertOneOrLess$0(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lnet/fortuna/ical4j/model/ParameterList;->getParameters(Ljava/lang/String;)Lnet/fortuna/ical4j/model/ParameterList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/ParameterList;->size()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 p1, 0x1

    .line 10
    if-le p0, p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
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
.end method
