.class public final synthetic Lcom/android/calendar/alerts/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/calendar/alerts/b$b;


# instance fields
.field public final synthetic a:Lcom/android/calendar/alerts/AlertActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/alerts/AlertActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/alerts/a;->a:Lcom/android/calendar/alerts/AlertActivity;

    return-void
.end method


# virtual methods
.method public final a(Lcom/miui/calendar/alerts/entities/BaseAlert;)V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/alerts/a;->a:Lcom/android/calendar/alerts/AlertActivity;

    invoke-static {v0, p1}, Lcom/android/calendar/alerts/AlertActivity;->b0(Lcom/android/calendar/alerts/AlertActivity;Lcom/miui/calendar/alerts/entities/BaseAlert;)V

    return-void
.end method
