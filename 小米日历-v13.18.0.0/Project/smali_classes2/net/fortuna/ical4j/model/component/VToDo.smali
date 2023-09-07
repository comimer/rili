.class public Lnet/fortuna/ical4j/model/component/VToDo;
.super Lnet/fortuna/ical4j/model/component/CalendarComponent;
.source "VToDo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/component/VToDo$Factory;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3be04b69dbed4dcL


# instance fields
.field private alarms:Lnet/fortuna/ical4j/model/ComponentList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/fortuna/ical4j/model/ComponentList<",
            "Lnet/fortuna/ical4j/model/component/VAlarm;",
            ">;"
        }
    .end annotation
.end field

.field private final methodValidators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/fortuna/ical4j/model/property/Method;",
            "Lnet/fortuna/ical4j/validate/Validator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/component/VToDo;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/Date;Ljava/lang/String;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/component/VToDo;-><init>()V

    .line 38
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/property/DtStart;

    invoke-direct {v1, p1}, Lnet/fortuna/ical4j/model/property/DtStart;-><init>(Lnet/fortuna/ical4j/model/Date;)V

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 39
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object p1

    new-instance v0, Lnet/fortuna/ical4j/model/property/Summary;

    invoke-direct {v0, p2}, Lnet/fortuna/ical4j/model/property/Summary;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/Date;Ljava/time/temporal/TemporalAmount;Ljava/lang/String;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/component/VToDo;-><init>()V

    .line 45
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/property/DtStart;

    invoke-direct {v1, p1}, Lnet/fortuna/ical4j/model/property/DtStart;-><init>(Lnet/fortuna/ical4j/model/Date;)V

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 46
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object p1

    new-instance v0, Lnet/fortuna/ical4j/model/property/Duration;

    invoke-direct {v0, p2}, Lnet/fortuna/ical4j/model/property/Duration;-><init>(Ljava/time/temporal/TemporalAmount;)V

    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 47
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object p1

    new-instance p2, Lnet/fortuna/ical4j/model/property/Summary;

    invoke-direct {p2, p3}, Lnet/fortuna/ical4j/model/property/Summary;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Date;Ljava/lang/String;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/component/VToDo;-><init>()V

    .line 41
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/property/DtStart;

    invoke-direct {v1, p1}, Lnet/fortuna/ical4j/model/property/DtStart;-><init>(Lnet/fortuna/ical4j/model/Date;)V

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 42
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object p1

    new-instance v0, Lnet/fortuna/ical4j/model/property/Due;

    invoke-direct {v0, p2}, Lnet/fortuna/ical4j/model/property/Due;-><init>(Lnet/fortuna/ical4j/model/Date;)V

    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 43
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object p1

    new-instance p2, Lnet/fortuna/ical4j/model/property/Summary;

    invoke-direct {p2, p3}, Lnet/fortuna/ical4j/model/property/Summary;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/PropertyList;)V
    .locals 44

    move-object/from16 v0, p0

    const-string v1, "VTODO"

    move-object/from16 v2, p1

    .line 14
    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/component/CalendarComponent;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 15
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lnet/fortuna/ical4j/model/component/VToDo;->methodValidators:Ljava/util/Map;

    .line 16
    sget-object v2, Lnet/fortuna/ical4j/model/property/Method;->ADD:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v3, Lnet/fortuna/ical4j/validate/component/VToDoValidator;

    const/4 v4, 0x3

    new-array v5, v4, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v6, Lnet/fortuna/ical4j/validate/ValidationRule;

    sget-object v7, Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;->One:Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;

    const-string v8, "DTSTAMP"

    const-string v9, "ORGANIZER"

    const-string v10, "PRIORITY"

    const-string v11, "SEQUENCE"

    const-string v12, "SUMMARY"

    const-string v13, "UID"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v8, 0x0

    aput-object v6, v5, v8

    new-instance v6, Lnet/fortuna/ical4j/validate/ValidationRule;

    sget-object v9, Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;->OneOrLess:Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;

    const-string v10, "CATEGORIES"

    const-string v11, "CLASS"

    const-string v12, "CREATED"

    const-string v13, "DESCRIPTION"

    const-string v14, "DTSTART"

    const-string v15, "DUE"

    const-string v16, "DURATION"

    const-string v17, "GEO"

    const-string v18, "LAST-MODIFIED"

    const-string v19, "LOCATION"

    const-string v20, "PERCENT-COMPLETE"

    const-string v21, "RESOURCES"

    const-string v22, "STATUS"

    const-string v23, "URL"

    filled-new-array/range {v10 .. v23}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v9, v10}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v10, 0x1

    aput-object v6, v5, v10

    new-instance v6, Lnet/fortuna/ical4j/validate/ValidationRule;

    sget-object v11, Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;->None:Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;

    const-string v12, "RECURRENCE-ID"

    const-string v13, "REQUEST-STATUS"

    filled-new-array {v12, v13}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v6, v11, v14}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v14, 0x2

    aput-object v6, v5, v14

    invoke-direct {v3, v5}, Lnet/fortuna/ical4j/validate/component/VToDoValidator;-><init>([Lnet/fortuna/ical4j/validate/ValidationRule;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v2, Lnet/fortuna/ical4j/model/property/Method;->CANCEL:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v3, Lnet/fortuna/ical4j/validate/component/VToDoValidator;

    new-array v5, v4, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v6, Lnet/fortuna/ical4j/validate/ValidationRule;

    const-string v15, "UID"

    const-string v4, "DTSTAMP"

    const-string v14, "ORGANIZER"

    const-string v10, "SEQUENCE"

    filled-new-array {v15, v4, v14, v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v7, v0}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    aput-object v6, v5, v8

    new-instance v0, Lnet/fortuna/ical4j/validate/ValidationRule;

    const-string v18, "CATEGORIES"

    const-string v19, "CLASS"

    const-string v20, "CREATED"

    const-string v21, "DESCRIPTION"

    const-string v22, "DTSTART"

    const-string v23, "DUE"

    const-string v24, "DURATION"

    const-string v25, "GEO"

    const-string v26, "LAST-MODIFIED"

    const-string v27, "LOCATION"

    const-string v28, "PERCENT-COMPLETE"

    const-string v29, "RECURRENCE-ID"

    const-string v30, "RESOURCES"

    const-string v31, "PRIORITY"

    const-string v32, "STATUS"

    const-string v33, "URL"

    filled-new-array/range {v18 .. v33}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v9, v6}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v6, 0x1

    aput-object v0, v5, v6

    new-instance v0, Lnet/fortuna/ical4j/validate/ValidationRule;

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v11, v6}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v6, 0x2

    aput-object v0, v5, v6

    invoke-direct {v3, v8, v5}, Lnet/fortuna/ical4j/validate/component/VToDoValidator;-><init>(Z[Lnet/fortuna/ical4j/validate/ValidationRule;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/validate/component/VToDoValidator;

    const/4 v3, 0x3

    new-array v5, v3, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    sget-object v6, Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;->OneOrMore:Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;

    const-string v8, "ATTENDEE"

    move-object/from16 v19, v12

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v6, v12}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v12, 0x0

    aput-object v3, v5, v12

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    const-string v12, "PRIORITY"

    move-object/from16 v20, v11

    const-string v11, "SUMMARY"

    move-object/from16 v21, v13

    filled-new-array {v4, v14, v12, v11, v15}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v7, v13}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v13, 0x1

    aput-object v3, v5, v13

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    const-string v22, "CATEGORIES"

    const-string v23, "CLASS"

    const-string v24, "CREATED"

    const-string v25, "DESCRIPTION"

    const-string v26, "DTSTART"

    const-string v27, "DUE"

    const-string v28, "DURATION"

    const-string v29, "GEO"

    const-string v30, "LAST-MODIFIED"

    const-string v31, "LOCATION"

    const-string v32, "PERCENT-COMPLETE"

    const-string v33, "RECURRENCE-ID"

    const-string v34, "RESOURCES"

    const-string v35, "RRULE"

    const-string v36, "SEQUENCE"

    const-string v37, "STATUS"

    const-string v38, "URL"

    filled-new-array/range {v22 .. v38}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v9, v13}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v13, 0x2

    aput-object v3, v5, v13

    invoke-direct {v2, v5}, Lnet/fortuna/ical4j/validate/component/VToDoValidator;-><init>([Lnet/fortuna/ical4j/validate/ValidationRule;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->DECLINE_COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/validate/component/VToDoValidator;

    const/4 v3, 0x3

    new-array v5, v3, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v6, v13}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v13, 0x0

    aput-object v3, v5, v13

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    filled-new-array {v4, v14, v10, v15}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v7, v10}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v10, 0x1

    aput-object v3, v5, v10

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    const-string v22, "CATEGORIES"

    const-string v23, "CLASS"

    const-string v24, "CREATED"

    const-string v25, "DESCRIPTION"

    const-string v26, "DTSTART"

    const-string v27, "DUE"

    const-string v28, "DURATION"

    const-string v29, "GEO"

    const-string v30, "LAST-MODIFIED"

    const-string v31, "LOCATION"

    const-string v32, "LOCATION"

    const-string v33, "PERCENT-COMPLETE"

    const-string v34, "PRIORITY"

    const-string v35, "RECURRENCE-ID"

    const-string v36, "RESOURCES"

    const-string v37, "STATUS"

    const-string v38, "URL"

    filled-new-array/range {v22 .. v38}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v10, 0x2

    aput-object v3, v5, v10

    const/4 v3, 0x0

    invoke-direct {v2, v3, v5}, Lnet/fortuna/ical4j/validate/component/VToDoValidator;-><init>(Z[Lnet/fortuna/ical4j/validate/ValidationRule;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->PUBLISH:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/validate/component/VToDoValidator;

    const/4 v5, 0x4

    new-array v10, v5, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v13, Lnet/fortuna/ical4j/validate/ValidationRule;

    filled-new-array {v4, v11, v15}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v13, v7, v11}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    aput-object v13, v10, v3

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    filled-new-array {v14, v12}, [Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-direct {v3, v7, v12, v11}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;Z[Ljava/lang/String;)V

    aput-object v3, v10, v12

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    const-string v22, "DTSTART"

    const-string v23, "SEQUENCE"

    const-string v24, "CATEGORIES"

    const-string v25, "CLASS"

    const-string v26, "CREATED"

    const-string v27, "DESCRIPTION"

    const-string v28, "DUE"

    const-string v29, "DURATION"

    const-string v30, "GEO"

    const-string v31, "LAST-MODIFIED"

    const-string v32, "LOCATION"

    const-string v33, "PERCENT-COMPLETE"

    const-string v34, "RECURRENCE-ID"

    const-string v35, "RESOURCES"

    const-string v36, "STATUS"

    const-string v37, "URL"

    filled-new-array/range {v22 .. v37}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v9, v11}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v11, 0x2

    aput-object v3, v10, v11

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    move-object/from16 v11, v21

    filled-new-array {v8, v11}, [Ljava/lang/String;

    move-result-object v12

    move-object/from16 v13, v20

    invoke-direct {v3, v13, v12}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v12, 0x3

    aput-object v3, v10, v12

    invoke-direct {v2, v10}, Lnet/fortuna/ical4j/validate/component/VToDoValidator;-><init>([Lnet/fortuna/ical4j/validate/ValidationRule;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->REFRESH:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/validate/component/VToDoValidator;

    new-array v3, v12, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v10, Lnet/fortuna/ical4j/validate/ValidationRule;

    filled-new-array {v8, v4, v15}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v7, v12}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v12, 0x0

    aput-object v10, v3, v12

    new-instance v10, Lnet/fortuna/ical4j/validate/ValidationRule;

    filled-new-array/range {v19 .. v19}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v9, v12}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v12, 0x1

    aput-object v10, v3, v12

    new-instance v10, Lnet/fortuna/ical4j/validate/ValidationRule;

    const-string v19, "ATTACH"

    const-string v20, "CATEGORIES"

    const-string v21, "CLASS"

    const-string v22, "CONTACT"

    const-string v23, "CREATED"

    const-string v24, "DESCRIPTION"

    const-string v25, "DTSTART"

    const-string v26, "DUE"

    const-string v27, "DURATION"

    const-string v28, "EXDATE"

    const-string v29, "EXRULE"

    const-string v30, "GEO"

    const-string v31, "LAST-MODIFIED"

    const-string v32, "LOCATION"

    const-string v33, "ORGANIZER"

    const-string v34, "PERCENT-COMPLETE"

    const-string v35, "PRIORITY"

    const-string v36, "RDATE"

    const-string v37, "RELATED-TO"

    const-string v38, "REQUEST-STATUS"

    const-string v39, "RESOURCES"

    const-string v40, "RRULE"

    const-string v41, "SEQUENCE"

    const-string v42, "STATUS"

    const-string v43, "URL"

    filled-new-array/range {v19 .. v43}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v13, v12}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v12, 0x2

    aput-object v10, v3, v12

    const/4 v10, 0x0

    invoke-direct {v2, v10, v3}, Lnet/fortuna/ical4j/validate/component/VToDoValidator;-><init>(Z[Lnet/fortuna/ical4j/validate/ValidationRule;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->REPLY:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/validate/component/VToDoValidator;

    const/4 v3, 0x3

    new-array v12, v3, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v6, v5}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    aput-object v3, v12, v10

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    filled-new-array {v4, v14, v15}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v7, v4}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v3, v12, v4

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    const-string v20, "CATEGORIES"

    const-string v21, "CLASS"

    const-string v22, "CREATED"

    const-string v23, "DESCRIPTION"

    const-string v24, "DTSTART"

    const-string v25, "DUE"

    const-string v26, "DURATION"

    const-string v27, "GEO"

    const-string v28, "LAST-MODIFIED"

    const-string v29, "LOCATION"

    const-string v30, "PERCENT-COMPLETE"

    const-string v31, "PRIORITY"

    const-string v32, "RESOURCES"

    const-string v33, "RECURRENCE-ID"

    const-string v34, "SEQUENCE"

    const-string v35, "STATUS"

    const-string v36, "SUMMARY"

    const-string v37, "URL"

    filled-new-array/range {v20 .. v37}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v9, v4}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v4, 0x2

    aput-object v3, v12, v4

    const/4 v3, 0x0

    invoke-direct {v2, v3, v12}, Lnet/fortuna/ical4j/validate/component/VToDoValidator;-><init>(Z[Lnet/fortuna/ical4j/validate/ValidationRule;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->REQUEST:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/validate/component/VToDoValidator;

    const/4 v4, 0x4

    new-array v4, v4, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v5, Lnet/fortuna/ical4j/validate/ValidationRule;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v8}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    aput-object v5, v4, v3

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    const-string v18, "DTSTAMP"

    const-string v19, "DTSTART"

    const-string v20, "ORGANIZER"

    const-string v21, "PRIORITY"

    const-string v22, "SUMMARY"

    const-string v23, "UID"

    filled-new-array/range {v18 .. v23}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v7, v5}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v5, 0x1

    aput-object v3, v4, v5

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    const-string v17, "SEQUENCE"

    const-string v18, "CATEGORIES"

    const-string v19, "CLASS"

    const-string v20, "CREATED"

    const-string v21, "DESCRIPTION"

    const-string v22, "DUE"

    const-string v23, "DURATION"

    const-string v24, "GEO"

    const-string v25, "LAST-MODIFIED"

    const-string v26, "LOCATION"

    const-string v27, "PERCENT-COMPLETE"

    const-string v28, "RECURRENCE-ID"

    const-string v29, "RESOURCES"

    const-string v30, "STATUS"

    const-string v31, "URL"

    filled-new-array/range {v17 .. v31}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v9, v5}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v5, 0x2

    aput-object v3, v4, v5

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v13, v5}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v5, 0x3

    aput-object v3, v4, v5

    invoke-direct {v2, v4}, Lnet/fortuna/ical4j/validate/component/VToDoValidator;-><init>([Lnet/fortuna/ical4j/validate/ValidationRule;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance v0, Lnet/fortuna/ical4j/model/ComponentList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/ComponentList;-><init>()V

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/fortuna/ical4j/model/component/VToDo;->alarms:Lnet/fortuna/ical4j/model/ComponentList;

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/PropertyList;Lnet/fortuna/ical4j/model/ComponentList;)V
    .locals 44
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/fortuna/ical4j/model/PropertyList;",
            "Lnet/fortuna/ical4j/model/ComponentList<",
            "Lnet/fortuna/ical4j/model/component/VAlarm;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "VTODO"

    move-object/from16 v2, p1

    .line 25
    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/component/CalendarComponent;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 26
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lnet/fortuna/ical4j/model/component/VToDo;->methodValidators:Ljava/util/Map;

    .line 27
    sget-object v2, Lnet/fortuna/ical4j/model/property/Method;->ADD:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v3, Lnet/fortuna/ical4j/validate/component/VToDoValidator;

    const/4 v4, 0x3

    new-array v5, v4, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v6, Lnet/fortuna/ical4j/validate/ValidationRule;

    sget-object v7, Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;->One:Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;

    const-string v8, "DTSTAMP"

    const-string v9, "ORGANIZER"

    const-string v10, "PRIORITY"

    const-string v11, "SEQUENCE"

    const-string v12, "SUMMARY"

    const-string v13, "UID"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v8, 0x0

    aput-object v6, v5, v8

    new-instance v6, Lnet/fortuna/ical4j/validate/ValidationRule;

    sget-object v9, Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;->OneOrLess:Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;

    const-string v10, "CATEGORIES"

    const-string v11, "CLASS"

    const-string v12, "CREATED"

    const-string v13, "DESCRIPTION"

    const-string v14, "DTSTART"

    const-string v15, "DUE"

    const-string v16, "DURATION"

    const-string v17, "GEO"

    const-string v18, "LAST-MODIFIED"

    const-string v19, "LOCATION"

    const-string v20, "PERCENT-COMPLETE"

    const-string v21, "RESOURCES"

    const-string v22, "STATUS"

    const-string v23, "URL"

    filled-new-array/range {v10 .. v23}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v9, v10}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v10, 0x1

    aput-object v6, v5, v10

    new-instance v6, Lnet/fortuna/ical4j/validate/ValidationRule;

    sget-object v11, Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;->None:Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;

    const-string v12, "RECURRENCE-ID"

    const-string v13, "REQUEST-STATUS"

    filled-new-array {v12, v13}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v6, v11, v14}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v14, 0x2

    aput-object v6, v5, v14

    invoke-direct {v3, v5}, Lnet/fortuna/ical4j/validate/component/VToDoValidator;-><init>([Lnet/fortuna/ical4j/validate/ValidationRule;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v2, Lnet/fortuna/ical4j/model/property/Method;->CANCEL:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v3, Lnet/fortuna/ical4j/validate/component/VToDoValidator;

    new-array v5, v4, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v6, Lnet/fortuna/ical4j/validate/ValidationRule;

    const-string v15, "UID"

    const-string v4, "DTSTAMP"

    const-string v14, "ORGANIZER"

    const-string v10, "SEQUENCE"

    filled-new-array {v15, v4, v14, v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v7, v0}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    aput-object v6, v5, v8

    new-instance v0, Lnet/fortuna/ical4j/validate/ValidationRule;

    const-string v18, "CATEGORIES"

    const-string v19, "CLASS"

    const-string v20, "CREATED"

    const-string v21, "DESCRIPTION"

    const-string v22, "DTSTART"

    const-string v23, "DUE"

    const-string v24, "DURATION"

    const-string v25, "GEO"

    const-string v26, "LAST-MODIFIED"

    const-string v27, "LOCATION"

    const-string v28, "PERCENT-COMPLETE"

    const-string v29, "RECURRENCE-ID"

    const-string v30, "RESOURCES"

    const-string v31, "PRIORITY"

    const-string v32, "STATUS"

    const-string v33, "URL"

    filled-new-array/range {v18 .. v33}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v9, v6}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v6, 0x1

    aput-object v0, v5, v6

    new-instance v0, Lnet/fortuna/ical4j/validate/ValidationRule;

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v11, v6}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v6, 0x2

    aput-object v0, v5, v6

    invoke-direct {v3, v8, v5}, Lnet/fortuna/ical4j/validate/component/VToDoValidator;-><init>(Z[Lnet/fortuna/ical4j/validate/ValidationRule;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/validate/component/VToDoValidator;

    const/4 v3, 0x3

    new-array v5, v3, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    sget-object v6, Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;->OneOrMore:Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;

    const-string v8, "ATTENDEE"

    move-object/from16 v19, v12

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v6, v12}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v12, 0x0

    aput-object v3, v5, v12

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    const-string v12, "PRIORITY"

    move-object/from16 v20, v11

    const-string v11, "SUMMARY"

    move-object/from16 v21, v13

    filled-new-array {v4, v14, v12, v11, v15}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v7, v13}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v13, 0x1

    aput-object v3, v5, v13

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    const-string v22, "CATEGORIES"

    const-string v23, "CLASS"

    const-string v24, "CREATED"

    const-string v25, "DESCRIPTION"

    const-string v26, "DTSTART"

    const-string v27, "DUE"

    const-string v28, "DURATION"

    const-string v29, "GEO"

    const-string v30, "LAST-MODIFIED"

    const-string v31, "LOCATION"

    const-string v32, "PERCENT-COMPLETE"

    const-string v33, "RECURRENCE-ID"

    const-string v34, "RESOURCES"

    const-string v35, "RRULE"

    const-string v36, "SEQUENCE"

    const-string v37, "STATUS"

    const-string v38, "URL"

    filled-new-array/range {v22 .. v38}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v9, v13}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v13, 0x2

    aput-object v3, v5, v13

    invoke-direct {v2, v5}, Lnet/fortuna/ical4j/validate/component/VToDoValidator;-><init>([Lnet/fortuna/ical4j/validate/ValidationRule;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->DECLINE_COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/validate/component/VToDoValidator;

    const/4 v3, 0x3

    new-array v5, v3, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v6, v13}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v13, 0x0

    aput-object v3, v5, v13

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    filled-new-array {v4, v14, v10, v15}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v7, v10}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v10, 0x1

    aput-object v3, v5, v10

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    const-string v22, "CATEGORIES"

    const-string v23, "CLASS"

    const-string v24, "CREATED"

    const-string v25, "DESCRIPTION"

    const-string v26, "DTSTART"

    const-string v27, "DUE"

    const-string v28, "DURATION"

    const-string v29, "GEO"

    const-string v30, "LAST-MODIFIED"

    const-string v31, "LOCATION"

    const-string v32, "LOCATION"

    const-string v33, "PERCENT-COMPLETE"

    const-string v34, "PRIORITY"

    const-string v35, "RECURRENCE-ID"

    const-string v36, "RESOURCES"

    const-string v37, "STATUS"

    const-string v38, "URL"

    filled-new-array/range {v22 .. v38}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v10, 0x2

    aput-object v3, v5, v10

    const/4 v3, 0x0

    invoke-direct {v2, v3, v5}, Lnet/fortuna/ical4j/validate/component/VToDoValidator;-><init>(Z[Lnet/fortuna/ical4j/validate/ValidationRule;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->PUBLISH:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/validate/component/VToDoValidator;

    const/4 v5, 0x4

    new-array v10, v5, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v13, Lnet/fortuna/ical4j/validate/ValidationRule;

    filled-new-array {v4, v11, v15}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v13, v7, v11}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    aput-object v13, v10, v3

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    filled-new-array {v14, v12}, [Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-direct {v3, v7, v12, v11}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;Z[Ljava/lang/String;)V

    aput-object v3, v10, v12

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    const-string v22, "DTSTART"

    const-string v23, "SEQUENCE"

    const-string v24, "CATEGORIES"

    const-string v25, "CLASS"

    const-string v26, "CREATED"

    const-string v27, "DESCRIPTION"

    const-string v28, "DUE"

    const-string v29, "DURATION"

    const-string v30, "GEO"

    const-string v31, "LAST-MODIFIED"

    const-string v32, "LOCATION"

    const-string v33, "PERCENT-COMPLETE"

    const-string v34, "RECURRENCE-ID"

    const-string v35, "RESOURCES"

    const-string v36, "STATUS"

    const-string v37, "URL"

    filled-new-array/range {v22 .. v37}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v9, v11}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v11, 0x2

    aput-object v3, v10, v11

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    move-object/from16 v11, v21

    filled-new-array {v8, v11}, [Ljava/lang/String;

    move-result-object v12

    move-object/from16 v13, v20

    invoke-direct {v3, v13, v12}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v12, 0x3

    aput-object v3, v10, v12

    invoke-direct {v2, v10}, Lnet/fortuna/ical4j/validate/component/VToDoValidator;-><init>([Lnet/fortuna/ical4j/validate/ValidationRule;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->REFRESH:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/validate/component/VToDoValidator;

    new-array v3, v12, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v10, Lnet/fortuna/ical4j/validate/ValidationRule;

    filled-new-array {v8, v4, v15}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v7, v12}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v12, 0x0

    aput-object v10, v3, v12

    new-instance v10, Lnet/fortuna/ical4j/validate/ValidationRule;

    filled-new-array/range {v19 .. v19}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v9, v12}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v12, 0x1

    aput-object v10, v3, v12

    new-instance v10, Lnet/fortuna/ical4j/validate/ValidationRule;

    const-string v19, "ATTACH"

    const-string v20, "CATEGORIES"

    const-string v21, "CLASS"

    const-string v22, "CONTACT"

    const-string v23, "CREATED"

    const-string v24, "DESCRIPTION"

    const-string v25, "DTSTART"

    const-string v26, "DUE"

    const-string v27, "DURATION"

    const-string v28, "EXDATE"

    const-string v29, "EXRULE"

    const-string v30, "GEO"

    const-string v31, "LAST-MODIFIED"

    const-string v32, "LOCATION"

    const-string v33, "ORGANIZER"

    const-string v34, "PERCENT-COMPLETE"

    const-string v35, "PRIORITY"

    const-string v36, "RDATE"

    const-string v37, "RELATED-TO"

    const-string v38, "REQUEST-STATUS"

    const-string v39, "RESOURCES"

    const-string v40, "RRULE"

    const-string v41, "SEQUENCE"

    const-string v42, "STATUS"

    const-string v43, "URL"

    filled-new-array/range {v19 .. v43}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v13, v12}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v12, 0x2

    aput-object v10, v3, v12

    const/4 v10, 0x0

    invoke-direct {v2, v10, v3}, Lnet/fortuna/ical4j/validate/component/VToDoValidator;-><init>(Z[Lnet/fortuna/ical4j/validate/ValidationRule;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->REPLY:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/validate/component/VToDoValidator;

    const/4 v3, 0x3

    new-array v12, v3, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v6, v5}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    aput-object v3, v12, v10

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    filled-new-array {v4, v14, v15}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v7, v4}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v3, v12, v4

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    const-string v20, "CATEGORIES"

    const-string v21, "CLASS"

    const-string v22, "CREATED"

    const-string v23, "DESCRIPTION"

    const-string v24, "DTSTART"

    const-string v25, "DUE"

    const-string v26, "DURATION"

    const-string v27, "GEO"

    const-string v28, "LAST-MODIFIED"

    const-string v29, "LOCATION"

    const-string v30, "PERCENT-COMPLETE"

    const-string v31, "PRIORITY"

    const-string v32, "RESOURCES"

    const-string v33, "RECURRENCE-ID"

    const-string v34, "SEQUENCE"

    const-string v35, "STATUS"

    const-string v36, "SUMMARY"

    const-string v37, "URL"

    filled-new-array/range {v20 .. v37}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v9, v4}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v4, 0x2

    aput-object v3, v12, v4

    const/4 v3, 0x0

    invoke-direct {v2, v3, v12}, Lnet/fortuna/ical4j/validate/component/VToDoValidator;-><init>(Z[Lnet/fortuna/ical4j/validate/ValidationRule;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->REQUEST:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/validate/component/VToDoValidator;

    const/4 v4, 0x4

    new-array v4, v4, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v5, Lnet/fortuna/ical4j/validate/ValidationRule;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v8}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    aput-object v5, v4, v3

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    const-string v18, "DTSTAMP"

    const-string v19, "DTSTART"

    const-string v20, "ORGANIZER"

    const-string v21, "PRIORITY"

    const-string v22, "SUMMARY"

    const-string v23, "UID"

    filled-new-array/range {v18 .. v23}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v7, v5}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v5, 0x1

    aput-object v3, v4, v5

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    const-string v17, "SEQUENCE"

    const-string v18, "CATEGORIES"

    const-string v19, "CLASS"

    const-string v20, "CREATED"

    const-string v21, "DESCRIPTION"

    const-string v22, "DUE"

    const-string v23, "DURATION"

    const-string v24, "GEO"

    const-string v25, "LAST-MODIFIED"

    const-string v26, "LOCATION"

    const-string v27, "PERCENT-COMPLETE"

    const-string v28, "RECURRENCE-ID"

    const-string v29, "RESOURCES"

    const-string v30, "STATUS"

    const-string v31, "URL"

    filled-new-array/range {v17 .. v31}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v9, v5}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v5, 0x2

    aput-object v3, v4, v5

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v13, v5}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v5, 0x3

    aput-object v3, v4, v5

    invoke-direct {v2, v4}, Lnet/fortuna/ical4j/validate/component/VToDoValidator;-><init>([Lnet/fortuna/ical4j/validate/ValidationRule;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v0, Lnet/fortuna/ical4j/model/ComponentList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/ComponentList;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 36
    iput-object v1, v0, Lnet/fortuna/ical4j/model/component/VToDo;->alarms:Lnet/fortuna/ical4j/model/ComponentList;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 45

    move-object/from16 v0, p0

    const-string v1, "VTODO"

    .line 2
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/component/CalendarComponent;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lnet/fortuna/ical4j/model/component/VToDo;->methodValidators:Ljava/util/Map;

    .line 4
    sget-object v2, Lnet/fortuna/ical4j/model/property/Method;->ADD:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v3, Lnet/fortuna/ical4j/validate/component/VToDoValidator;

    const/4 v4, 0x3

    new-array v5, v4, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v6, Lnet/fortuna/ical4j/validate/ValidationRule;

    sget-object v7, Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;->One:Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;

    const-string v8, "DTSTAMP"

    const-string v9, "ORGANIZER"

    const-string v10, "PRIORITY"

    const-string v11, "SEQUENCE"

    const-string v12, "SUMMARY"

    const-string v13, "UID"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v8, 0x0

    aput-object v6, v5, v8

    new-instance v6, Lnet/fortuna/ical4j/validate/ValidationRule;

    sget-object v9, Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;->OneOrLess:Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;

    const-string v10, "CATEGORIES"

    const-string v11, "CLASS"

    const-string v12, "CREATED"

    const-string v13, "DESCRIPTION"

    const-string v14, "DTSTART"

    const-string v15, "DUE"

    const-string v16, "DURATION"

    const-string v17, "GEO"

    const-string v18, "LAST-MODIFIED"

    const-string v19, "LOCATION"

    const-string v20, "PERCENT-COMPLETE"

    const-string v21, "RESOURCES"

    const-string v22, "STATUS"

    const-string v23, "URL"

    filled-new-array/range {v10 .. v23}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v9, v10}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v10, 0x1

    aput-object v6, v5, v10

    new-instance v6, Lnet/fortuna/ical4j/validate/ValidationRule;

    sget-object v11, Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;->None:Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;

    const-string v12, "RECURRENCE-ID"

    const-string v13, "REQUEST-STATUS"

    filled-new-array {v12, v13}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v6, v11, v14}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v14, 0x2

    aput-object v6, v5, v14

    invoke-direct {v3, v5}, Lnet/fortuna/ical4j/validate/component/VToDoValidator;-><init>([Lnet/fortuna/ical4j/validate/ValidationRule;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v2, Lnet/fortuna/ical4j/model/property/Method;->CANCEL:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v3, Lnet/fortuna/ical4j/validate/component/VToDoValidator;

    new-array v5, v4, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v6, Lnet/fortuna/ical4j/validate/ValidationRule;

    const-string v15, "UID"

    const-string v4, "DTSTAMP"

    const-string v14, "ORGANIZER"

    const-string v10, "SEQUENCE"

    filled-new-array {v15, v4, v14, v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v7, v0}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    aput-object v6, v5, v8

    new-instance v0, Lnet/fortuna/ical4j/validate/ValidationRule;

    const-string v19, "CATEGORIES"

    const-string v20, "CLASS"

    const-string v21, "CREATED"

    const-string v22, "DESCRIPTION"

    const-string v23, "DTSTART"

    const-string v24, "DUE"

    const-string v25, "DURATION"

    const-string v26, "GEO"

    const-string v27, "LAST-MODIFIED"

    const-string v28, "LOCATION"

    const-string v29, "PERCENT-COMPLETE"

    const-string v30, "RECURRENCE-ID"

    const-string v31, "RESOURCES"

    const-string v32, "PRIORITY"

    const-string v33, "STATUS"

    const-string v34, "URL"

    filled-new-array/range {v19 .. v34}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v9, v6}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v6, 0x1

    aput-object v0, v5, v6

    new-instance v0, Lnet/fortuna/ical4j/validate/ValidationRule;

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v11, v6}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v6, 0x2

    aput-object v0, v5, v6

    invoke-direct {v3, v8, v5}, Lnet/fortuna/ical4j/validate/component/VToDoValidator;-><init>(Z[Lnet/fortuna/ical4j/validate/ValidationRule;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/validate/component/VToDoValidator;

    const/4 v3, 0x3

    new-array v5, v3, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    sget-object v6, Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;->OneOrMore:Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;

    const-string v8, "ATTENDEE"

    move-object/from16 v20, v12

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v6, v12}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v12, 0x0

    aput-object v3, v5, v12

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    const-string v12, "PRIORITY"

    move-object/from16 v21, v11

    const-string v11, "SUMMARY"

    move-object/from16 v22, v13

    filled-new-array {v4, v14, v12, v11, v15}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v7, v13}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v13, 0x1

    aput-object v3, v5, v13

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    const-string v23, "CATEGORIES"

    const-string v24, "CLASS"

    const-string v25, "CREATED"

    const-string v26, "DESCRIPTION"

    const-string v27, "DTSTART"

    const-string v28, "DUE"

    const-string v29, "DURATION"

    const-string v30, "GEO"

    const-string v31, "LAST-MODIFIED"

    const-string v32, "LOCATION"

    const-string v33, "PERCENT-COMPLETE"

    const-string v34, "RECURRENCE-ID"

    const-string v35, "RESOURCES"

    const-string v36, "RRULE"

    const-string v37, "SEQUENCE"

    const-string v38, "STATUS"

    const-string v39, "URL"

    filled-new-array/range {v23 .. v39}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v9, v13}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v13, 0x2

    aput-object v3, v5, v13

    invoke-direct {v2, v5}, Lnet/fortuna/ical4j/validate/component/VToDoValidator;-><init>([Lnet/fortuna/ical4j/validate/ValidationRule;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->DECLINE_COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/validate/component/VToDoValidator;

    const/4 v3, 0x3

    new-array v5, v3, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v6, v13}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v13, 0x0

    aput-object v3, v5, v13

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    filled-new-array {v4, v14, v10, v15}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v7, v10}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v10, 0x1

    aput-object v3, v5, v10

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    const-string v23, "CATEGORIES"

    const-string v24, "CLASS"

    const-string v25, "CREATED"

    const-string v26, "DESCRIPTION"

    const-string v27, "DTSTART"

    const-string v28, "DUE"

    const-string v29, "DURATION"

    const-string v30, "GEO"

    const-string v31, "LAST-MODIFIED"

    const-string v32, "LOCATION"

    const-string v33, "LOCATION"

    const-string v34, "PERCENT-COMPLETE"

    const-string v35, "PRIORITY"

    const-string v36, "RECURRENCE-ID"

    const-string v37, "RESOURCES"

    const-string v38, "STATUS"

    const-string v39, "URL"

    filled-new-array/range {v23 .. v39}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v10, 0x2

    aput-object v3, v5, v10

    const/4 v3, 0x0

    invoke-direct {v2, v3, v5}, Lnet/fortuna/ical4j/validate/component/VToDoValidator;-><init>(Z[Lnet/fortuna/ical4j/validate/ValidationRule;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->PUBLISH:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/validate/component/VToDoValidator;

    const/4 v5, 0x4

    new-array v10, v5, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v13, Lnet/fortuna/ical4j/validate/ValidationRule;

    filled-new-array {v4, v11, v15}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v13, v7, v11}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    aput-object v13, v10, v3

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    filled-new-array {v14, v12}, [Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-direct {v3, v7, v12, v11}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;Z[Ljava/lang/String;)V

    aput-object v3, v10, v12

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    const-string v23, "DTSTART"

    const-string v24, "SEQUENCE"

    const-string v25, "CATEGORIES"

    const-string v26, "CLASS"

    const-string v27, "CREATED"

    const-string v28, "DESCRIPTION"

    const-string v29, "DUE"

    const-string v30, "DURATION"

    const-string v31, "GEO"

    const-string v32, "LAST-MODIFIED"

    const-string v33, "LOCATION"

    const-string v34, "PERCENT-COMPLETE"

    const-string v35, "RECURRENCE-ID"

    const-string v36, "RESOURCES"

    const-string v37, "STATUS"

    const-string v38, "URL"

    filled-new-array/range {v23 .. v38}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v9, v11}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v11, 0x2

    aput-object v3, v10, v11

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    move-object/from16 v11, v22

    filled-new-array {v8, v11}, [Ljava/lang/String;

    move-result-object v12

    move-object/from16 v13, v21

    invoke-direct {v3, v13, v12}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v12, 0x3

    aput-object v3, v10, v12

    invoke-direct {v2, v10}, Lnet/fortuna/ical4j/validate/component/VToDoValidator;-><init>([Lnet/fortuna/ical4j/validate/ValidationRule;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->REFRESH:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/validate/component/VToDoValidator;

    new-array v3, v12, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v10, Lnet/fortuna/ical4j/validate/ValidationRule;

    filled-new-array {v8, v4, v15}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v7, v12}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v12, 0x0

    aput-object v10, v3, v12

    new-instance v10, Lnet/fortuna/ical4j/validate/ValidationRule;

    filled-new-array/range {v20 .. v20}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v9, v12}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v12, 0x1

    aput-object v10, v3, v12

    new-instance v10, Lnet/fortuna/ical4j/validate/ValidationRule;

    const-string v20, "ATTACH"

    const-string v21, "CATEGORIES"

    const-string v22, "CLASS"

    const-string v23, "CONTACT"

    const-string v24, "CREATED"

    const-string v25, "DESCRIPTION"

    const-string v26, "DTSTART"

    const-string v27, "DUE"

    const-string v28, "DURATION"

    const-string v29, "EXDATE"

    const-string v30, "EXRULE"

    const-string v31, "GEO"

    const-string v32, "LAST-MODIFIED"

    const-string v33, "LOCATION"

    const-string v34, "ORGANIZER"

    const-string v35, "PERCENT-COMPLETE"

    const-string v36, "PRIORITY"

    const-string v37, "RDATE"

    const-string v38, "RELATED-TO"

    const-string v39, "REQUEST-STATUS"

    const-string v40, "RESOURCES"

    const-string v41, "RRULE"

    const-string v42, "SEQUENCE"

    const-string v43, "STATUS"

    const-string v44, "URL"

    filled-new-array/range {v20 .. v44}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v13, v12}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v12, 0x2

    aput-object v10, v3, v12

    const/4 v10, 0x0

    invoke-direct {v2, v10, v3}, Lnet/fortuna/ical4j/validate/component/VToDoValidator;-><init>(Z[Lnet/fortuna/ical4j/validate/ValidationRule;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->REPLY:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/validate/component/VToDoValidator;

    const/4 v3, 0x3

    new-array v12, v3, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v6, v5}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    aput-object v3, v12, v10

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    filled-new-array {v4, v14, v15}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v7, v4}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v3, v12, v4

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    const-string v21, "CATEGORIES"

    const-string v22, "CLASS"

    const-string v23, "CREATED"

    const-string v24, "DESCRIPTION"

    const-string v25, "DTSTART"

    const-string v26, "DUE"

    const-string v27, "DURATION"

    const-string v28, "GEO"

    const-string v29, "LAST-MODIFIED"

    const-string v30, "LOCATION"

    const-string v31, "PERCENT-COMPLETE"

    const-string v32, "PRIORITY"

    const-string v33, "RESOURCES"

    const-string v34, "RECURRENCE-ID"

    const-string v35, "SEQUENCE"

    const-string v36, "STATUS"

    const-string v37, "SUMMARY"

    const-string v38, "URL"

    filled-new-array/range {v21 .. v38}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v9, v4}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v4, 0x2

    aput-object v3, v12, v4

    const/4 v3, 0x0

    invoke-direct {v2, v3, v12}, Lnet/fortuna/ical4j/validate/component/VToDoValidator;-><init>(Z[Lnet/fortuna/ical4j/validate/ValidationRule;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->REQUEST:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/validate/component/VToDoValidator;

    const/4 v4, 0x4

    new-array v4, v4, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v5, Lnet/fortuna/ical4j/validate/ValidationRule;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v8}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    aput-object v5, v4, v3

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    const-string v19, "DTSTAMP"

    const-string v20, "DTSTART"

    const-string v21, "ORGANIZER"

    const-string v22, "PRIORITY"

    const-string v23, "SUMMARY"

    const-string v24, "UID"

    filled-new-array/range {v19 .. v24}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v7, v5}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v5, 0x1

    aput-object v3, v4, v5

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    const-string v18, "SEQUENCE"

    const-string v19, "CATEGORIES"

    const-string v20, "CLASS"

    const-string v21, "CREATED"

    const-string v22, "DESCRIPTION"

    const-string v23, "DUE"

    const-string v24, "DURATION"

    const-string v25, "GEO"

    const-string v26, "LAST-MODIFIED"

    const-string v27, "LOCATION"

    const-string v28, "PERCENT-COMPLETE"

    const-string v29, "RECURRENCE-ID"

    const-string v30, "RESOURCES"

    const-string v31, "STATUS"

    const-string v32, "URL"

    filled-new-array/range {v18 .. v32}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v9, v5}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v5, 0x2

    aput-object v3, v4, v5

    new-instance v3, Lnet/fortuna/ical4j/validate/ValidationRule;

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v13, v5}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v5, 0x3

    aput-object v3, v4, v5

    invoke-direct {v2, v4}, Lnet/fortuna/ical4j/validate/component/VToDoValidator;-><init>([Lnet/fortuna/ical4j/validate/ValidationRule;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v0, Lnet/fortuna/ical4j/model/ComponentList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/ComponentList;-><init>()V

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/fortuna/ical4j/model/component/VToDo;->alarms:Lnet/fortuna/ical4j/model/ComponentList;

    if-eqz p1, :cond_0

    .line 13
    invoke-virtual/range {p0 .. p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    new-instance v2, Lnet/fortuna/ical4j/model/property/DtStamp;

    invoke-direct {v2}, Lnet/fortuna/ical4j/model/property/DtStamp;-><init>()V

    invoke-virtual {v0, v2}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$validate$0(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Lnet/fortuna/ical4j/validate/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 6
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

.method public static synthetic s(Lnet/fortuna/ical4j/model/component/VToDo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/component/VToDo;->lambda$validate$0(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public copy()Lnet/fortuna/ical4j/model/Component;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lnet/fortuna/ical4j/model/Component;->copy()Lnet/fortuna/ical4j/model/Component;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lnet/fortuna/ical4j/model/component/VToDo;

    .line 6
    .line 7
    new-instance v1, Lnet/fortuna/ical4j/model/ComponentList;

    .line 8
    .line 9
    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo;->alarms:Lnet/fortuna/ical4j/model/ComponentList;

    .line 10
    .line 11
    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/ComponentList;-><init>(Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, v0, Lnet/fortuna/ical4j/model/component/VToDo;->alarms:Lnet/fortuna/ical4j/model/ComponentList;

    .line 15
    .line 16
    return-object v0
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

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lnet/fortuna/ical4j/model/component/VToDo;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-super {p0, p1}, Lnet/fortuna/ical4j/model/Component;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VToDo;->alarms:Lnet/fortuna/ical4j/model/ComponentList;

    .line 12
    .line 13
    check-cast p1, Lnet/fortuna/ical4j/model/component/VToDo;

    .line 14
    .line 15
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/component/VToDo;->getAlarms()Lnet/fortuna/ical4j/model/ComponentList;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    return p1

    .line 29
    :cond_1
    invoke-super {p0, p1}, Lnet/fortuna/ical4j/model/Component;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1
.end method

.method public final getAlarms()Lnet/fortuna/ical4j/model/ComponentList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/fortuna/ical4j/model/ComponentList<",
            "Lnet/fortuna/ical4j/model/component/VAlarm;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VToDo;->alarms:Lnet/fortuna/ical4j/model/ComponentList;

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

.method public final getClassification()Lnet/fortuna/ical4j/model/property/Clazz;
    .locals 1

    .line 1
    const-string v0, "CLASS"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/fortuna/ical4j/model/property/Clazz;

    .line 8
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

.method public final getCreated()Lnet/fortuna/ical4j/model/property/Created;
    .locals 1

    .line 1
    const-string v0, "CREATED"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/fortuna/ical4j/model/property/Created;

    .line 8
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

.method public final getDateCompleted()Lnet/fortuna/ical4j/model/property/Completed;
    .locals 1

    .line 1
    const-string v0, "COMPLETED"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/fortuna/ical4j/model/property/Completed;

    .line 8
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

.method public final getDateStamp()Lnet/fortuna/ical4j/model/property/DtStamp;
    .locals 1

    .line 1
    const-string v0, "DTSTAMP"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/fortuna/ical4j/model/property/DtStamp;

    .line 8
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

.method public final getDescription()Lnet/fortuna/ical4j/model/property/Description;
    .locals 1

    .line 1
    const-string v0, "DESCRIPTION"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/fortuna/ical4j/model/property/Description;

    .line 8
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

.method public final getDue()Lnet/fortuna/ical4j/model/property/Due;
    .locals 1

    .line 1
    const-string v0, "DUE"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/fortuna/ical4j/model/property/Due;

    .line 8
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

.method public final getDuration()Lnet/fortuna/ical4j/model/property/Duration;
    .locals 1

    .line 1
    const-string v0, "DURATION"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/fortuna/ical4j/model/property/Duration;

    .line 8
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

.method public final getGeographicPos()Lnet/fortuna/ical4j/model/property/Geo;
    .locals 1

    .line 1
    const-string v0, "GEO"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/fortuna/ical4j/model/property/Geo;

    .line 8
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

.method public final getLastModified()Lnet/fortuna/ical4j/model/property/LastModified;
    .locals 1

    .line 1
    const-string v0, "LAST-MODIFIED"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/fortuna/ical4j/model/property/LastModified;

    .line 8
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

.method public final getLocation()Lnet/fortuna/ical4j/model/property/Location;
    .locals 1

    .line 1
    const-string v0, "LOCATION"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/fortuna/ical4j/model/property/Location;

    .line 8
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

.method public final getOrganizer()Lnet/fortuna/ical4j/model/property/Organizer;
    .locals 1

    .line 1
    const-string v0, "ORGANIZER"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/fortuna/ical4j/model/property/Organizer;

    .line 8
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

.method public final getPercentComplete()Lnet/fortuna/ical4j/model/property/PercentComplete;
    .locals 1

    .line 1
    const-string v0, "PERCENT-COMPLETE"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/fortuna/ical4j/model/property/PercentComplete;

    .line 8
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

.method public final getPriority()Lnet/fortuna/ical4j/model/property/Priority;
    .locals 1

    .line 1
    const-string v0, "PRIORITY"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/fortuna/ical4j/model/property/Priority;

    .line 8
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

.method public final getRecurrenceId()Lnet/fortuna/ical4j/model/property/RecurrenceId;
    .locals 1

    .line 1
    const-string v0, "RECURRENCE-ID"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/fortuna/ical4j/model/property/RecurrenceId;

    .line 8
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

.method public final getSequence()Lnet/fortuna/ical4j/model/property/Sequence;
    .locals 1

    .line 1
    const-string v0, "SEQUENCE"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/fortuna/ical4j/model/property/Sequence;

    .line 8
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

.method public final getStartDate()Lnet/fortuna/ical4j/model/property/DtStart;
    .locals 1

    .line 1
    const-string v0, "DTSTART"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/fortuna/ical4j/model/property/DtStart;

    .line 8
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

.method public final getStatus()Lnet/fortuna/ical4j/model/property/Status;
    .locals 1

    .line 1
    const-string v0, "STATUS"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/fortuna/ical4j/model/property/Status;

    .line 8
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

.method public final getSummary()Lnet/fortuna/ical4j/model/property/Summary;
    .locals 1

    .line 1
    const-string v0, "SUMMARY"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/fortuna/ical4j/model/property/Summary;

    .line 8
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

.method public final getUid()Lnet/fortuna/ical4j/model/property/Uid;
    .locals 1

    .line 1
    const-string v0, "UID"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/fortuna/ical4j/model/property/Uid;

    .line 8
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

.method public final getUrl()Lnet/fortuna/ical4j/model/property/Url;
    .locals 1

    .line 1
    const-string v0, "URL"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/fortuna/ical4j/model/property/Url;

    .line 8
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

.method protected getValidator(Lnet/fortuna/ical4j/model/property/Method;)Lnet/fortuna/ical4j/validate/Validator;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VToDo;->methodValidators:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lnet/fortuna/ical4j/validate/Validator;

    .line 8
    .line 9
    return-object p1
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

.method public hashCode()I
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/builder/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/e;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/e;->g(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/e;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/e;->g(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/e;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VToDo;->getAlarms()Lnet/fortuna/ical4j/model/ComponentList;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/e;->g(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/e;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/e;->t()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    return v0
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

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "BEGIN:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "\r\n"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VToDo;->getAlarms()Lnet/fortuna/ical4j/model/ComponentList;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, "END"

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const/16 v2, 0x3a

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    return-object v0
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

.method public final validate(Z)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/validate/ValidationException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lnet/fortuna/ical4j/model/component/VToDo;->getAlarms()Lnet/fortuna/ical4j/model/ComponentList;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lnet/fortuna/ical4j/model/component/VAlarm;

    .line 24
    .line 25
    invoke-virtual {v3, v1}, Lnet/fortuna/ical4j/model/component/VAlarm;->validate(Z)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string v2, "ical4j.validation.relaxed"

    .line 30
    .line 31
    invoke-static {v2}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    invoke-virtual/range {p0 .. p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const-string v3, "UID"

    .line 42
    .line 43
    invoke-static {v3, v2}, Lnet/fortuna/ical4j/validate/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual/range {p0 .. p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const-string v3, "DTSTAMP"

    .line 51
    .line 52
    invoke-static {v3, v2}, Lnet/fortuna/ical4j/validate/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    const-string v4, "CLASS"

    .line 56
    .line 57
    const-string v5, "COMPLETED"

    .line 58
    .line 59
    const-string v6, "CREATED"

    .line 60
    .line 61
    const-string v7, "DESCRIPTION"

    .line 62
    .line 63
    const-string v8, "DTSTAMP"

    .line 64
    .line 65
    const-string v9, "DTSTART"

    .line 66
    .line 67
    const-string v10, "GEO"

    .line 68
    .line 69
    const-string v11, "LAST-MODIFIED"

    .line 70
    .line 71
    const-string v12, "LOCATION"

    .line 72
    .line 73
    const-string v13, "ORGANIZER"

    .line 74
    .line 75
    const-string v14, "PERCENT-COMPLETE"

    .line 76
    .line 77
    const-string v15, "PRIORITY"

    .line 78
    .line 79
    const-string v16, "RECURRENCE-ID"

    .line 80
    .line 81
    const-string v17, "SEQUENCE"

    .line 82
    .line 83
    const-string v18, "STATUS"

    .line 84
    .line 85
    const-string v19, "SUMMARY"

    .line 86
    .line 87
    const-string v20, "UID"

    .line 88
    .line 89
    const-string v21, "URL"

    .line 90
    .line 91
    filled-new-array/range {v4 .. v21}, [Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    new-instance v3, Lnet/fortuna/ical4j/model/component/j;

    .line 100
    .line 101
    invoke-direct {v3, v0}, Lnet/fortuna/ical4j/model/component/j;-><init>(Lnet/fortuna/ical4j/model/component/VToDo;)V

    .line 102
    .line 103
    .line 104
    invoke-interface {v2, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 105
    .line 106
    .line 107
    const-string v2, "STATUS"

    .line 108
    .line 109
    invoke-virtual {v0, v2}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    check-cast v2, Lnet/fortuna/ical4j/model/property/Status;

    .line 114
    .line 115
    if-eqz v2, :cond_3

    .line 116
    .line 117
    sget-object v3, Lnet/fortuna/ical4j/model/property/Status;->VTODO_NEEDS_ACTION:Lnet/fortuna/ical4j/model/property/Status;

    .line 118
    .line 119
    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/property/Status;->getValue()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/Status;->getValue()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-nez v3, :cond_3

    .line 132
    .line 133
    sget-object v3, Lnet/fortuna/ical4j/model/property/Status;->VTODO_COMPLETED:Lnet/fortuna/ical4j/model/property/Status;

    .line 134
    .line 135
    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/property/Status;->getValue()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/Status;->getValue()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-nez v3, :cond_3

    .line 148
    .line 149
    sget-object v3, Lnet/fortuna/ical4j/model/property/Status;->VTODO_IN_PROCESS:Lnet/fortuna/ical4j/model/property/Status;

    .line 150
    .line 151
    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/property/Status;->getValue()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/Status;->getValue()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    if-nez v3, :cond_3

    .line 164
    .line 165
    sget-object v3, Lnet/fortuna/ical4j/model/property/Status;->VTODO_CANCELLED:Lnet/fortuna/ical4j/model/property/Status;

    .line 166
    .line 167
    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/property/Status;->getValue()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/Status;->getValue()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    if-eqz v3, :cond_2

    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_2
    new-instance v1, Lnet/fortuna/ical4j/validate/ValidationException;

    .line 183
    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    const-string v4, "Status property ["

    .line 190
    .line 191
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/Property;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v2, "] may not occur in VTODO"

    .line 202
    .line 203
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/validate/ValidationException;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    throw v1

    .line 214
    :cond_3
    :goto_1
    :try_start_0
    const-string v2, "DUE"

    .line 215
    .line 216
    invoke-virtual/range {p0 .. p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    invoke-static {v2, v3}, Lnet/fortuna/ical4j/validate/PropertyValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V
    :try_end_0
    .catch Lnet/fortuna/ical4j/validate/ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .line 222
    .line 223
    goto :goto_2

    .line 224
    :catch_0
    invoke-virtual/range {p0 .. p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    const-string v3, "DURATION"

    .line 229
    .line 230
    invoke-static {v3, v2}, Lnet/fortuna/ical4j/validate/PropertyValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 231
    .line 232
    .line 233
    :goto_2
    if-eqz v1, :cond_4

    .line 234
    .line 235
    invoke-virtual/range {p0 .. p0}, Lnet/fortuna/ical4j/model/Component;->validateProperties()V

    .line 236
    .line 237
    .line 238
    :cond_4
    return-void
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
.end method
