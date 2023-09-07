.class public final synthetic Lcom/miui/calendar/sync/NewEventImportActivity$d;
.super Ljava/lang/Object;
.source "NewEventImportActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/calendar/sync/NewEventImportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "d"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$Reason;->values()[Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$Reason;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$Reason;->REASON_BLOCK:Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$Reason;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$Reason;->REASON_401:Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$Reason;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$Reason;->REASON_CONNECT_FAILED:Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$Reason;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$Reason;->REASON_RESOURCE_NOT_FOUND:Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$Reason;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$Reason;->REASON_OTHER_EXCEPTION:Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$Reason;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sput-object v0, Lcom/miui/calendar/sync/NewEventImportActivity$d;->a:[I

    return-void
.end method
