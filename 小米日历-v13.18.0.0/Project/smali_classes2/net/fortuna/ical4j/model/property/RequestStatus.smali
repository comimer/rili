.class public Lnet/fortuna/ical4j/model/property/RequestStatus;
.super Lnet/fortuna/ical4j/model/Property;
.source "RequestStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/property/RequestStatus$Factory;
    }
.end annotation


# static fields
.field public static final CLIENT_ERROR:Ljava/lang/String; = "3"

.field public static final PRELIM_SUCCESS:Ljava/lang/String; = "1"

.field public static final SCHEDULING_ERROR:Ljava/lang/String; = "4"

.field public static final SUCCESS:Ljava/lang/String; = "2"

.field private static final serialVersionUID:J = -0x2d6f62c03b004191L


# instance fields
.field private description:Ljava/lang/String;

.field private exData:Ljava/lang/String;

.field private statusCode:Ljava/lang/String;

.field private final validator:Lnet/fortuna/ical4j/validate/Validator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/fortuna/ical4j/validate/Validator<",
            "Lnet/fortuna/ical4j/model/Property;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/ParameterList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/ParameterList;-><init>()V

    new-instance v1, Lnet/fortuna/ical4j/model/property/RequestStatus$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/RequestStatus$Factory;-><init>()V

    const-string v2, "REQUEST-STATUS"

    invoke-direct {p0, v2, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 2
    new-instance v0, Lnet/fortuna/ical4j/validate/PropertyValidator;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v2, Lnet/fortuna/ical4j/validate/ValidationRule;

    sget-object v3, Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;->OneOrLess:Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;

    const-string v4, "LANGUAGE"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/validate/PropertyValidator;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/RequestStatus;->validator:Lnet/fortuna/ical4j/validate/Validator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 6
    new-instance v0, Lnet/fortuna/ical4j/model/ParameterList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/ParameterList;-><init>()V

    new-instance v1, Lnet/fortuna/ical4j/model/property/RequestStatus$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/RequestStatus$Factory;-><init>()V

    const-string v2, "REQUEST-STATUS"

    invoke-direct {p0, v2, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 7
    new-instance v0, Lnet/fortuna/ical4j/validate/PropertyValidator;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v2, Lnet/fortuna/ical4j/validate/ValidationRule;

    sget-object v3, Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;->OneOrLess:Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;

    const-string v4, "LANGUAGE"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/validate/PropertyValidator;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/RequestStatus;->validator:Lnet/fortuna/ical4j/validate/Validator;

    .line 8
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/RequestStatus;->statusCode:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lnet/fortuna/ical4j/model/property/RequestStatus;->description:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lnet/fortuna/ical4j/model/property/RequestStatus;->exData:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V
    .locals 4

    .line 3
    new-instance v0, Lnet/fortuna/ical4j/model/property/RequestStatus$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/RequestStatus$Factory;-><init>()V

    const-string v1, "REQUEST-STATUS"

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 4
    new-instance p1, Lnet/fortuna/ical4j/validate/PropertyValidator;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v1, Lnet/fortuna/ical4j/validate/ValidationRule;

    sget-object v2, Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;->OneOrLess:Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;

    const-string v3, "LANGUAGE"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/fortuna/ical4j/validate/PropertyValidator;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/RequestStatus;->validator:Lnet/fortuna/ical4j/validate/Validator;

    .line 5
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/RequestStatus;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 11
    new-instance v0, Lnet/fortuna/ical4j/model/property/RequestStatus$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/RequestStatus$Factory;-><init>()V

    const-string v1, "REQUEST-STATUS"

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 12
    new-instance p1, Lnet/fortuna/ical4j/validate/PropertyValidator;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v1, Lnet/fortuna/ical4j/validate/ValidationRule;

    sget-object v2, Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;->OneOrLess:Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;

    const-string v3, "LANGUAGE"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/fortuna/ical4j/validate/PropertyValidator;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/RequestStatus;->validator:Lnet/fortuna/ical4j/validate/Validator;

    .line 13
    iput-object p2, p0, Lnet/fortuna/ical4j/model/property/RequestStatus;->statusCode:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lnet/fortuna/ical4j/model/property/RequestStatus;->description:Ljava/lang/String;

    .line 15
    iput-object p4, p0, Lnet/fortuna/ical4j/model/property/RequestStatus;->exData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/RequestStatus;->description:Ljava/lang/String;

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

.method public final getExData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/RequestStatus;->exData:Ljava/lang/String;

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

.method public final getStatusCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/RequestStatus;->statusCode:Ljava/lang/String;

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

.method public final getValue()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/RequestStatus;->getStatusCode()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/RequestStatus;->getStatusCode()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/RequestStatus;->getDescription()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/16 v2, 0x3b

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/RequestStatus;->getDescription()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/RequestStatus;->getExData()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/RequestStatus;->getExData()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/RequestStatus;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-void
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
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method public final setExData(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/RequestStatus;->exData:Ljava/lang/String;

    .line 2
    .line 3
    return-void
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
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method public final setStatusCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/RequestStatus;->statusCode:Ljava/lang/String;

    .line 2
    .line 3
    return-void
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
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/StringTokenizer;

    .line 2
    .line 3
    const-string v1, ";"

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/RequestStatus;->statusCode:Ljava/lang/String;

    .line 19
    .line 20
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/RequestStatus;->description:Ljava/lang/String;

    .line 31
    .line 32
    :cond_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/RequestStatus;->exData:Ljava/lang/String;

    .line 43
    .line 44
    :cond_2
    return-void
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
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
.end method

.method public validate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/validate/ValidationException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/RequestStatus;->validator:Lnet/fortuna/ical4j/validate/Validator;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lnet/fortuna/ical4j/validate/Validator;->validate(Ljava/lang/Object;)V

    .line 4
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
.end method
