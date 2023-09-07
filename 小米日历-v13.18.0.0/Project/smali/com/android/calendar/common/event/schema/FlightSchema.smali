.class public Lcom/android/calendar/common/event/schema/FlightSchema;
.super Ljava/lang/Object;
.source "FlightSchema.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final CATEGORY_INLAND_TO_INLAND:I = 0x0

.field public static final CATEGORY_INLAND_TO_INTER:I = 0x1

.field public static final CATEGORY_INLAND_TO_REGION:I = 0x2

.field public static final CATEGORY_INTER_TO_INTER:I = 0x4

.field public static final CATEGORY_REGION_TO_INTER:I = 0x3

.field public static final CATEGORY_UNKNOWN:I = 0x5

.field public static final CHECK_IN_STATUS_CANCEL:I = 0x2

.field public static final CHECK_IN_STATUS_DONE:I = 0x1

.field public static final CHECK_IN_STATUS_DONE_AGAIN:I = 0x3

.field private static final CHINESE_AIRPORT_CODE_ARRAY:[Ljava/lang/String;

.field private static final IRRELEVANT_WORDS_IN_AIRPORT:[Ljava/lang/String;

.field private static final KEY_ARR_CITY:Ljava/lang/String; = "FlightArr"

.field private static final KEY_DEP_CITY:Ljava/lang/String; = "FlightDep"

.field public static final LOCATION_TYPE_INLAND:I = 0x0

.field public static final LOCATION_TYPE_INTER:I = 0x1

.field public static final LOCATION_TYPE_UNKNOWN:I = -0x1

.field private static final STRING_AIRPORT:Ljava/lang/String; = "\u673a\u573a"

.field private static final TAG:Ljava/lang/String; = "Cal:D:FlightSchema"

.field private static sChineseAirportCodeSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFlightCompanyTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public FlightArr:Ljava/lang/String;

.field public FlightArrAirport:Ljava/lang/String;

.field public FlightArrcode:Ljava/lang/String;

.field public FlightArrtimeDate:Ljava/lang/String;

.field public FlightArrtimePlanDate:Ljava/lang/String;

.field public FlightArrtimeReadyDate:Ljava/lang/String;

.field public FlightCompany:Ljava/lang/String;

.field public FlightDep:Ljava/lang/String;

.field public FlightDepAirport:Ljava/lang/String;

.field public FlightDepcode:Ljava/lang/String;

.field public FlightDeptimeDate:Ljava/lang/String;

.field public FlightDeptimePlanDate:Ljava/lang/String;

.field public FlightDeptimeReadyDate:Ljava/lang/String;

.field public FlightHTerminal:Ljava/lang/String;

.field public FlightNo:Ljava/lang/String;

.field public FlightState:Ljava/lang/String;

.field public FlightTerminal:Ljava/lang/String;

.field public alternate_info:Ljava/lang/String;

.field public dst_timezone:I

.field public fcategory:I

.field public org_timezone:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u4e2d\u56fd\u5357\u65b9\u822a\u7a7a\u80a1\u4efd\u6709\u9650\u516c\u53f8"

    const-string v2, "\u5357\u65b9\u822a\u7a7a"

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u4e2d\u56fd\u4e1c\u65b9\u822a\u7a7a\u80a1\u4efd\u6709\u9650\u516c\u53f8"

    const-string v2, "\u4e1c\u65b9\u822a\u7a7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u4e2d\u56fd\u897f\u5357\u822a\u7a7a\u516c\u53f8"

    const-string v2, "\u897f\u5357\u822a\u7a7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u4e2d\u56fd\u897f\u5317\u822a\u7a7a\u516c\u53f8"

    const-string v2, "\u897f\u5317\u822a\u7a7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u4e2d\u56fd\u5317\u65b9\u822a\u7a7a\u516c\u53f8"

    const-string v2, "\u5317\u65b9\u822a\u7a7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u4e2d\u56fd\u65b0\u7586\u822a\u7a7a\u516c\u53f8"

    const-string v2, "\u65b0\u7586\u822a\u7a7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u4e2d\u56fd\u4e91\u5357\u822a\u7a7a\u516c\u53f8"

    const-string v2, "\u4e91\u5357\u822a\u7a7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u53a6\u95e8\u822a\u7a7a\u6709\u9650\u516c\u53f8"

    const-string v2, "\u53a6\u95e8\u822a\u7a7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u4e0a\u6d77\u822a\u7a7a\u6709\u9650\u516c\u53f8"

    const-string v2, "\u4e0a\u6d77\u822a\u7a7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u6d77\u5357\u822a\u7a7a\u80a1\u4efd\u6709\u9650\u516c\u53f8"

    const-string v2, "\u6d77\u5357\u822a\u7a7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u6df1\u5733\u822a\u7a7a\u6709\u9650\u8d23\u4efb\u516c\u53f8"

    const-string v2, "\u6df1\u5733\u822a\u7a7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u5c71\u4e1c\u822a\u7a7a\u80a1\u4efd\u6709\u9650\u516c\u53f8"

    const-string v2, "\u5c71\u4e1c\u822a\u7a7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u56db\u5ddd\u822a\u7a7a\u80a1\u4efd\u6709\u9650\u516c\u53f8"

    const-string v2, "\u56db\u5ddd\u822a\u7a7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u6fb3\u95e8\u822a\u7a7a\u80a1\u4efd\u6709\u9650\u516c\u53f8"

    const-string v2, "\u6fb3\u95e8\u822a\u7a7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u9999\u6e2f\u56fd\u6cf0\u822a\u7a7a\u6709\u9650\u516c\u53f8"

    const-string v2, "\u56fd\u6cf0\u822a\u7a7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u9999\u6e2f\u6e2f\u9f99\u822a\u7a7a\u6709\u9650\u516c\u53f8"

    const-string v2, "\u6e2f\u9f99\u822a\u7a7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u4e2d\u534e\u822a\u7a7a\u516c\u53f8"

    const-string v2, "\u4e2d\u534e\u822a\u7a7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u957f\u8363\u822a\u7a7a\u80a1\u4efd\u6709\u9650\u516c\u53f8"

    const-string v2, "\u957f\u8363\u822a\u7a7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u590d\u5174\u822a\u7a7a\u8fd0\u8f93\u80a1\u4efd\u6709\u9650\u516c\u53f8"

    const-string v2, "\u590d\u5174\u822a\u7a7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u4e1c\u661f\u822a\u7a7a\u6709\u9650\u516c\u53f8"

    const-string v2, "\u4e1c\u661f\u822a\u7a7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u5965\u51ef\u822a\u7a7a\u516c\u53f8"

    const-string v2, "\u5965\u51ef\u822a\u7a7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u6210\u90fd\u822a\u7a7a\u6709\u9650\u516c\u53f8"

    const-string v2, "\u6210\u90fd\u822a\u7a7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u6625\u79cb\u822a\u7a7a\u6709\u9650\u516c\u53f8"

    const-string v2, "\u6625\u79cb\u822a\u7a7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u4e0a\u6d77\u5409\u7965\u822a\u7a7a\u6709\u9650\u516c\u53f8"

    const-string v2, "\u5409\u7965\u822a\u7a7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u5317\u4eac\u9996\u90fd\u822a\u7a7a\u6709\u9650\u516c\u53f8"

    const-string v2, "\u9996\u90fd\u822a\u7a7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u9999\u6e2f\u7518\u6cc9\u822a\u7a7a"

    const-string v2, "\u7518\u6cc9\u822a\u7a7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u4e2d\u56fd\u90ae\u653f\u822a\u7a7a\u516c\u53f8"

    const-string v2, "\u90ae\u653f\u822a\u7a7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u6cb3\u5317\u822a\u7a7a\u6709\u9650\u516c\u53f8"

    const-string v2, "\u6cb3\u5317\u822a\u7a7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u534e\u590f\u822a\u7a7a\u6709\u9650\u516c\u53f8"

    const-string v2, "\u534e\u590f\u822a\u7a7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u957f\u57ce\u822a\u7a7a\u6709\u9650\u516c\u53f8(\u8d27\u8fd0)"

    const-string v2, "\u957f\u57ce\u822a\u7a7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u897f\u90e8\u822a\u7a7a\u6709\u9650\u8d23\u4efb\u516c\u53f8"

    const-string v3, "\u897f\u90e8\u822a\u7a7a"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u91cd\u5e86\u822a\u7a7a\u6709\u9650\u8d23\u4efb\u516c\u53f8"

    const-string v3, "\u91cd\u5e86\u822a\u7a7a"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u9999\u6e2f\u822a\u7a7a\u6709\u9650\u516c\u53f8"

    const-string v3, "\u9999\u6e2f\u822a\u7a7a"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u4e2d\u56fd\u8054\u5408\u822a\u7a7a\u6709\u9650\u516c\u53f8"

    const-string v3, "\u8054\u5408\u822a\u7a7a"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u5927\u65b0\u534e\u822a\u7a7a\u6709\u9650\u516c\u53f8"

    const-string v3, "\u5927\u65b0\u534e\u822a\u7a7a"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u4e2d\u4fe1\u901a\u7528\u822a\u7a7a\u6709\u9650\u8d23\u4efb\u516c\u53f8"

    const-string v3, "\u4e2d\u4fe1\u901a\u7528\u822a\u7a7a"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u4e91\u5357\u7965\u9e4f\u822a\u7a7a\u6709\u9650\u8d23\u4efb\u516c\u53f8"

    const-string v3, "\u7965\u9e4f\u822a\u7a7a"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u5929\u6d25\u822a\u7a7a\u6709\u9650\u8d23\u4efb\u516c\u53f8"

    const-string v3, "\u5929\u6d25\u822a\u7a7a"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u7acb\u8363\u822a\u7a7a\u516c\u53f8"

    const-string v3, "\u7acb\u8363\u822a\u7a7a"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u534e\u4fe1\u822a\u7a7a\u80a1\u4efd\u6709\u9650\u516c\u53f8"

    const-string v3, "\u534e\u4fe1\u822a\u7a7a"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u53f0\u6e7e\u5fb7\u5b89\u822a\u7a7a\u516c\u53f8"

    const-string v3, "\u53f0\u6e7e\u5fb7\u5b89\u822a\u7a7a"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u9999\u6e2f\u534e\u6c11\u822a\u7a7a\u6709\u9650\u516c\u53f8"

    const-string v3, "\u9999\u6e2f\u534e\u6c11\u822a\u7a7a"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u6fb3\u95e8\u975e\u51e1\u822a\u7a7a\u516c\u53f8"

    const-string v3, "\u6fb3\u95e8\u975e\u51e1\u822a\u7a7a"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u6cb3\u5357\u822a\u7a7a\u6709\u9650\u516c\u53f8"

    const-string v3, "\u6cb3\u5357\u822a\u7a7a"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u4e2d\u56fd\u957f\u57ce\u822a\u7a7a\u516c\u53f8\uff08\u5ba2\u8fd0\uff09"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u4e2d\u539f\u822a\u7a7a\u516c\u53f8"

    const-string v2, "\u4e2d\u539f\u822a\u7a7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u6b66\u6c49\u822a\u7a7a\u516c\u53f8"

    const-string v2, "\u6b66\u6c49\u822a\u7a7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u798f\u5efa\u822a\u7a7a\u516c\u53f8"

    const-string v2, "\u798f\u5efa\u822a\u7a7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u6d77\u5357\u7701\u822a\u7a7a\u516c\u53f8"

    const-string v2, "\u6d77\u5357\u7701\u822a\u7a7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u4e2d\u56fd\u65b0\u534e\u822a\u7a7a\u516c\u53f8"

    const-string v2, "\u65b0\u534e\u822a\u7a7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u5e78\u798f\u822a\u7a7a\u6709\u9650\u8d23\u4efb\u516c\u53f8"

    const-string v2, "\u5e78\u798f\u822a\u7a7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u6606\u660e\u822a\u7a7a\u6709\u9650\u516c\u53f8"

    const-string v2, "\u6606\u660e\u822a\u7a7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u6d59\u6c5f\u822a\u7a7a\u516c\u53f8"

    const-string v2, "\u6d59\u6c5f\u822a\u7a7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u4e2d\u56fd\u6c11\u822a"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u897f\u85cf\u822a\u7a7a"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u5fb7\u56fd\u6c49\u838e\u822a\u7a7a\u516c\u53f8"

    const-string v2, "\u6c49\u838e\u822a\u7a7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    const-string v1, "\u9a6c\u6765\u897f\u4e9a\u4e9a\u6d32\u822a\u7a7a\u516c\u53f8"

    const-string v2, "\u4e9a\u6d32\u822a\u7a7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sChineseAirportCodeSet:Ljava/util/HashSet;

    const-string v0, "\u6709\u9650"

    const-string v1, "\u80a1\u4efd"

    const-string v2, "\u8d23\u4efb"

    const-string v3, "\u516c\u53f8"

    .line 60
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->IRRELEVANT_WORDS_IN_AIRPORT:[Ljava/lang/String;

    const/16 v0, 0xe6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "PEK"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CGQ"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CSX"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CTU"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CKG"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "DLC"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "FOC"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CAN"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "KWE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "HAK"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "XNT"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "YLN"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "YUA"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "XIN"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "HGH"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "HRB"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "HET"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "TNA"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "KMG"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "KHN"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "NKG"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "NNG"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "TAO"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "SYX"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "PVG"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "SHE"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "SZX"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "SJW"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "TYN"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "TSN"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "URC"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "WNZ"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "WUH"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "XMN"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "XIY"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "CGO"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "AKU"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "AAT"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "AXF"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "RHT"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "AVA"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "AKA"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "AQG"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "AOG"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "YIE"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "AEB"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "NBS"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "BPX"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "BSD"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "BAV"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "RLK"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "BHY"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "NAY"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "BFU"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "BFJ"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "BPL"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "KJI"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "CGD"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "CIH"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "CZX"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "CHG"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "CIF"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "JUH"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "DLU"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "DDG"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "DCY"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "DQA"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "DAT"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "DAX"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "DYG"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "DIG"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "DSN"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "DOY"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "DNH"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "EJN"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "ENH"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "ERL"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "FUO"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "FUG"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "FYJ"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "KOW"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "GOQ"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "GYS"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "KWL"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "GYU"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "HLD"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "HMI"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "HDG"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "HZG"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "HFE"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "HEK"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "HPG"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "HTN"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "HIA"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "HJJ"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "HHA"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "JGS"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "JGD"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "JMU"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "JGN"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "JIC"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "JDZ"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "JHG"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "JNG"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "JJN"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "JNZ"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "JIU"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "JXA"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "KJH"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "KGT"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "KRY"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "KHG"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "KRL"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "KCA"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "LHW"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "ZGC"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "LXA"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "LYG"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "LLB"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "LJG"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "LNJ"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "LYI"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "HZH"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "LZH"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "LCX"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "LYA"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "LZO"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "LUM"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "NZH"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "MXZ"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "MIG"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "OHE"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "MDG"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "NAO"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "LZN"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "NTG"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "NNY"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "NGB"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "LZY"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "PZI"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "JIQ"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "IQM"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "IQN"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "SHP"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "NDG"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "JUZ"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "SWA"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "NGQ"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "RKZ"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "SYM"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "JZH"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "SZV"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "TCG"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "HYN"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "TVS"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "TCZ"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "THQ"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "TGO"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "TEN"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "TXN"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "TLQ"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "HLH"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "WXN"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "WEF"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "WEH"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "WNH"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "WUA"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "WUX"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "WUS"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "WUZ"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "GXH"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "SIA"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "XFN"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "XIC"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "XIL"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "ACX"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "XNN"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "NLT"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "XUZ"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "ENY"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "YNZ"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "YTY"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "YNJ"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "YNT"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "YBP"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "YIH"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "LDS"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "YIC"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "INC"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "YIN"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "YIW"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "LLF"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "UYN"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "YCU"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "YUS"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "ZQZ"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "YZY"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "ZHA"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "ZAT"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "ZHY"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "HSN"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "ZUH"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "ZYI"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "AYN"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "CNI"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "DZU"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "FYN"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "GHN"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "LHK"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "HNY"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "ZMY"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "HUZ"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "KNC"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "JIL"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "CHW"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, "LZD"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "LIA"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, "LXI"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, "PNJ"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "RUG"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, "SHF"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "SXJ"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "SZO"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string v2, "HSC"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "SHS"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "FUD"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, "TNH"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string v2, "WHU"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v2, "XEN"

    aput-object v2, v0, v1

    .line 61
    sput-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->CHINESE_AIRPORT_CODE_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCorrectFlight(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8

    .line 1
    const-string v0, "Cal:D:FlightSchema"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    if-ge v2, v3, :cond_5

    .line 10
    .line 11
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const-string v4, "FlightDep"

    .line 16
    .line 17
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const-string v5, "FlightArr"

    .line 22
    .line 23
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    const/4 v7, 0x1

    .line 32
    if-nez v6, :cond_1

    .line 33
    .line 34
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-nez v6, :cond_0

    .line 39
    .line 40
    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_0

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    move v4, v1

    .line 48
    goto :goto_2

    .line 49
    :cond_1
    :goto_1
    move v4, v7

    .line 50
    :goto_2
    invoke-static {v5, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-nez v6, :cond_3

    .line 55
    .line 56
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-nez v6, :cond_2

    .line 61
    .line 62
    invoke-virtual {p4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-eqz v5, :cond_2

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_2
    move v7, v1

    .line 70
    :cond_3
    :goto_3
    if-eqz v4, :cond_4

    .line 71
    .line 72
    if-eqz v7, :cond_4

    .line 73
    .line 74
    new-instance p0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string p1, "getCorrectFlight(): index:"

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-static {v0, p0}, Lt1/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-object v3

    .line 95
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_5
    const-string p1, "getCorrectFlight(): CAN NOT match any one, return array[0]"

    .line 99
    .line 100
    invoke-static {v0, p1}, Lt1/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 104
    .line 105
    .line 106
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    return-object p0

    .line 108
    :catch_0
    move-exception p0

    .line 109
    const-string p1, "getCorrectFlight()"

    .line 110
    .line 111
    invoke-static {v0, p1, p0}, Lt1/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    const/4 p0, 0x0

    .line 115
    return-object p0
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
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
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
.end method

.method private static initAirportCodeSet()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sChineseAirportCodeSet:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    sget-object v1, Lcom/android/calendar/common/event/schema/FlightSchema;->CHINESE_AIRPORT_CODE_ARRAY:[Ljava/lang/String;

    .line 11
    .line 12
    array-length v2, v1

    .line 13
    if-ge v0, v2, :cond_0

    .line 14
    .line 15
    sget-object v2, Lcom/android/calendar/common/event/schema/FlightSchema;->sChineseAirportCodeSet:Ljava/util/HashSet;

    .line 16
    .line 17
    aget-object v1, v1, v0

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
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
.end method


# virtual methods
.method public adjustData()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/calendar/common/event/schema/FlightSchema;->initAirportCodeSet()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightDepAirport:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightDep:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-string v1, ""

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightDepAirport:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightDep:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightDepAirport:Ljava/lang/String;

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightArrAirport:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightArr:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightArrAirport:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightArr:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightArrAirport:Ljava/lang/String;

    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightDepAirport:Ljava/lang/String;

    .line 47
    .line 48
    const-string v2, "\u673a\u573a"

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    iget-object v3, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightDepAirport:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iput-object v0, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightDepAirport:Ljava/lang/String;

    .line 74
    .line 75
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightArrAirport:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_3

    .line 82
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    iget-object v3, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightArrAirport:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iput-object v0, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightArrAirport:Ljava/lang/String;

    .line 101
    .line 102
    :cond_3
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    .line 103
    .line 104
    iget-object v2, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightCompany:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_4

    .line 111
    .line 112
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    .line 113
    .line 114
    iget-object v1, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightCompany:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Ljava/lang/String;

    .line 121
    .line 122
    iput-object v0, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightCompany:Ljava/lang/String;

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_4
    const/4 v0, 0x0

    .line 126
    :goto_0
    sget-object v2, Lcom/android/calendar/common/event/schema/FlightSchema;->IRRELEVANT_WORDS_IN_AIRPORT:[Ljava/lang/String;

    .line 127
    .line 128
    array-length v3, v2

    .line 129
    if-ge v0, v3, :cond_5

    .line 130
    .line 131
    iget-object v3, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightCompany:Ljava/lang/String;

    .line 132
    .line 133
    aget-object v2, v2, v0

    .line 134
    .line 135
    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    iput-object v2, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightCompany:Ljava/lang/String;

    .line 140
    .line 141
    add-int/lit8 v0, v0, 0x1

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_5
    :goto_1
    return-void
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
.end method

.method public adjustFlightSchema()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/calendar/common/event/schema/FlightSchema;->initAirportCodeSet()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightDepAirport:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightDep:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-string v1, ""

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightDepAirport:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightDep:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightDepAirport:Ljava/lang/String;

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightArrAirport:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightArr:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightArrAirport:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightArr:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightArrAirport:Ljava/lang/String;

    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightDepAirport:Ljava/lang/String;

    .line 47
    .line 48
    const-string v2, "\u673a\u573a"

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    iget-object v3, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightDepAirport:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iput-object v0, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightDepAirport:Ljava/lang/String;

    .line 74
    .line 75
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightArrAirport:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_3

    .line 82
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    iget-object v3, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightArrAirport:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iput-object v0, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightArrAirport:Ljava/lang/String;

    .line 101
    .line 102
    :cond_3
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    .line 103
    .line 104
    iget-object v2, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightCompany:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_4

    .line 111
    .line 112
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    .line 113
    .line 114
    iget-object v1, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightCompany:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Ljava/lang/String;

    .line 121
    .line 122
    iput-object v0, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightCompany:Ljava/lang/String;

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_4
    const/4 v0, 0x0

    .line 126
    :goto_0
    sget-object v2, Lcom/android/calendar/common/event/schema/FlightSchema;->IRRELEVANT_WORDS_IN_AIRPORT:[Ljava/lang/String;

    .line 127
    .line 128
    array-length v3, v2

    .line 129
    if-ge v0, v3, :cond_5

    .line 130
    .line 131
    iget-object v3, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightCompany:Ljava/lang/String;

    .line 132
    .line 133
    aget-object v2, v2, v0

    .line 134
    .line 135
    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    iput-object v2, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightCompany:Ljava/lang/String;

    .line 140
    .line 141
    add-int/lit8 v0, v0, 0x1

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_5
    :goto_1
    return-void
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
.end method

.method public getArrTime()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightArrtimeDate:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightArrtimeDate:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, " "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x1

    .line 20
    aget-object v0, v0, v1

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x5

    .line 24
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
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
.end method

.method public getDepTime()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightDeptimeDate:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightDeptimeDate:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, " "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x1

    .line 20
    aget-object v0, v0, v1

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x5

    .line 24
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
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
.end method

.method public getFlightArrType()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->fcategory:I

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
    const/4 v2, 0x4

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eq v0, v2, :cond_4

    .line 10
    .line 11
    const/4 v2, 0x3

    .line 12
    if-ne v0, v2, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    if-eq v0, v3, :cond_3

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    if-ne v0, v2, :cond_2

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    const/4 v0, -0x1

    .line 22
    return v0

    .line 23
    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/calendar/common/event/schema/FlightSchema;->initAirportCodeSet()V

    .line 24
    .line 25
    .line 26
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sChineseAirportCodeSet:Ljava/util/HashSet;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightArrcode:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_4

    .line 35
    .line 36
    return v1

    .line 37
    :cond_4
    :goto_1
    return v3
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
.end method

.method public getFlightDepType()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->fcategory:I

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
    const/4 v2, 0x4

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eq v0, v2, :cond_4

    .line 10
    .line 11
    const/4 v2, 0x3

    .line 12
    if-ne v0, v2, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    if-eq v0, v3, :cond_3

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    if-ne v0, v2, :cond_2

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    const/4 v0, -0x1

    .line 22
    return v0

    .line 23
    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/calendar/common/event/schema/FlightSchema;->initAirportCodeSet()V

    .line 24
    .line 25
    .line 26
    sget-object v0, Lcom/android/calendar/common/event/schema/FlightSchema;->sChineseAirportCodeSet:Ljava/util/HashSet;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightDepcode:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_4

    .line 35
    .line 36
    return v1

    .line 37
    :cond_4
    :goto_1
    return v3
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
.end method

.method public isFlightSchemaValid()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->fcategory:I

    .line 2
    .line 3
    if-ltz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    if-gt v0, v1, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightNo:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightCompany:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightDepcode:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightArrcode:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightDeptimePlanDate:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightArrtimePlanDate:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightDep:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_1

    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightArr:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_1

    .line 71
    .line 72
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightDepAirport:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_1

    .line 79
    .line 80
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightArrAirport:Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_0

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    const/4 v0, 0x1

    .line 90
    return v0

    .line 91
    :cond_1
    :goto_0
    const-string v0, "Cal:D:FlightSchema"

    .line 92
    .line 93
    const-string v1, "isFlightSchemaValid(): flight schema INVALID"

    .line 94
    .line 95
    invoke-static {v0, v1}, Lt1/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const/4 v0, 0x0

    .line 99
    return v0
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
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
.end method
