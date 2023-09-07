.class public final synthetic Lcom/android/calendar/cards/x;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lorg/json/JSONObject;

.field public final synthetic c:Lcom/android/calendar/cards/CardHelper$b;

.field public final synthetic d:Lcom/miui/calendar/account/mi/MiAccountSchema;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/calendar/cards/CardHelper$b;Lcom/miui/calendar/account/mi/MiAccountSchema;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/cards/x;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/calendar/cards/x;->b:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/android/calendar/cards/x;->c:Lcom/android/calendar/cards/CardHelper$b;

    iput-object p4, p0, Lcom/android/calendar/cards/x;->d:Lcom/miui/calendar/account/mi/MiAccountSchema;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/calendar/cards/x;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/cards/x;->b:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/android/calendar/cards/x;->c:Lcom/android/calendar/cards/CardHelper$b;

    iget-object v3, p0, Lcom/android/calendar/cards/x;->d:Lcom/miui/calendar/account/mi/MiAccountSchema;

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/cards/CardHelper$a;->c(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/calendar/cards/CardHelper$b;Lcom/miui/calendar/account/mi/MiAccountSchema;)V

    return-void
.end method
