.class public final synthetic Lcom/android/calendar/cards/z1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/calendar/cards/SummaryPresenter$a;

.field public final synthetic b:Lcom/miui/calendar/weather/WeatherInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/cards/SummaryPresenter$a;Lcom/miui/calendar/weather/WeatherInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/cards/z1;->a:Lcom/android/calendar/cards/SummaryPresenter$a;

    iput-object p2, p0, Lcom/android/calendar/cards/z1;->b:Lcom/miui/calendar/weather/WeatherInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/cards/z1;->a:Lcom/android/calendar/cards/SummaryPresenter$a;

    iget-object v1, p0, Lcom/android/calendar/cards/z1;->b:Lcom/miui/calendar/weather/WeatherInfo;

    invoke-static {v0, v1}, Lcom/android/calendar/cards/SummaryPresenter$a;->c(Lcom/android/calendar/cards/SummaryPresenter$a;Lcom/miui/calendar/weather/WeatherInfo;)V

    return-void
.end method
