.class public Lnet/fortuna/ical4j/model/property/Categories;
.super Lnet/fortuna/ical4j/model/Property;
.source "Categories.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/property/Categories$Factory;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6bd48a137f5bc922L


# instance fields
.field private categories:Lnet/fortuna/ical4j/model/TextList;

.field private validator:Lnet/fortuna/ical4j/validate/Validator;
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

    new-instance v1, Lnet/fortuna/ical4j/model/property/Categories$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/Categories$Factory;-><init>()V

    const-string v2, "CATEGORIES"

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

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/Categories;->validator:Lnet/fortuna/ical4j/validate/Validator;

    .line 3
    new-instance v0, Lnet/fortuna/ical4j/model/TextList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/TextList;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/Categories;->categories:Lnet/fortuna/ical4j/model/TextList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 4
    new-instance v0, Lnet/fortuna/ical4j/model/ParameterList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/ParameterList;-><init>()V

    new-instance v1, Lnet/fortuna/ical4j/model/property/Categories$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/Categories$Factory;-><init>()V

    const-string v2, "CATEGORIES"

    invoke-direct {p0, v2, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 5
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

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/Categories;->validator:Lnet/fortuna/ical4j/validate/Validator;

    .line 6
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/Categories;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V
    .locals 4

    .line 7
    new-instance v0, Lnet/fortuna/ical4j/model/property/Categories$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Categories$Factory;-><init>()V

    const-string v1, "CATEGORIES"

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 8
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

    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Categories;->validator:Lnet/fortuna/ical4j/validate/Validator;

    .line 9
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/Categories;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/TextList;)V
    .locals 4

    .line 13
    new-instance v0, Lnet/fortuna/ical4j/model/property/Categories$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Categories$Factory;-><init>()V

    const-string v1, "CATEGORIES"

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 14
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

    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Categories;->validator:Lnet/fortuna/ical4j/validate/Validator;

    .line 15
    iput-object p2, p0, Lnet/fortuna/ical4j/model/property/Categories;->categories:Lnet/fortuna/ical4j/model/TextList;

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/TextList;)V
    .locals 5

    .line 10
    new-instance v0, Lnet/fortuna/ical4j/model/ParameterList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/ParameterList;-><init>()V

    new-instance v1, Lnet/fortuna/ical4j/model/property/Categories$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/Categories$Factory;-><init>()V

    const-string v2, "CATEGORIES"

    invoke-direct {p0, v2, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 11
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

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/Categories;->validator:Lnet/fortuna/ical4j/validate/Validator;

    .line 12
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Categories;->categories:Lnet/fortuna/ical4j/model/TextList;

    return-void
.end method


# virtual methods
.method public final getCategories()Lnet/fortuna/ical4j/model/TextList;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Categories;->categories:Lnet/fortuna/ical4j/model/TextList;

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
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Categories;->getCategories()Lnet/fortuna/ical4j/model/TextList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/TextList;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
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

.method public final setValue(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/TextList;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lnet/fortuna/ical4j/model/TextList;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/Categories;->categories:Lnet/fortuna/ical4j/model/TextList;

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
.end method

.method public validate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/validate/ValidationException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Categories;->validator:Lnet/fortuna/ical4j/validate/Validator;

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
