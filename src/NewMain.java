
public class NewMain {

    public static class Time {
        // Thuoc tinh

        private int second; // tu 0 den 59
        private int minute; // tu 0 den 59
        private int hour; // tu 0 den 23

        // Phuong thuc
        // Ham khoi tao khong doi so
        public Time() {
            this.second = 0;
            this.minute = 0;
            this.hour = 0;
        }

        // Ham khoi tao co doi so
        public Time(int second, int minute, int hour) {
            this.second = second;
            this.minute = minute;
            this.hour = hour;
        }

        // Ham getter va setter cho cac thuoc tinh
        public int getSecond() {
            return second;
        }

        public void setSecond(int second) {
            // Neu secord > 60 thi reset second = 0
            if (second >= 0 && second < 60) {
                this.second = second;
            } else {
                this.second = 0;
            }
        }

        public int getMinute() {
            return minute;
        }

        public void setMinute(int minute) {
            // Neu minute > 60 thi reset minute = 0
            if (minute >= 0 && minute < 60) {
                this.minute = minute;
            } else {
                this.minute = 0;
            }
        }

        public int getHour() {
            return hour;
        }

        public void setHour(int hour) {
            // Neu hour > 23 thi reset hour =0
            if (hour >= 0 && hour < 24) {
                this.hour = hour;
            } else {
                this.hour = 0;
            }
        }

        // Hien thi thoi gian
        @Override
        public String toString() {
            String str = "";
            if (hour == 12 || hour == 0) {
                str += 12;
            } else {
                str += (hour % 12);
            }
            str += ":";
            if (minute < 10) {
                str += "0";
            } else {
                str += "";
            }
            str += minute + ":";
            if (second < 10) {
                str += "0";
            } else {
                str += "";
            }
            str += second;
            if (hour < 12) {
                str += " AM";
            } else {
                str += " PM";
            }
            return str;
        }

        // Tang giay len 1 don vi
        public void tangGiay() {
            this.setSecond(this.second + 1);
            // Neu giay tang len 60 thi giay reset ve 0, va tang phut len 1
            if (this.second == 0) {
                tangPhut();
            }
        }

        // Tang phut len 1 don vi
        public void tangPhut() {
            this.setMinute(this.minute + 1);
            // Neu phut tang len 60 thi phut reset ve 0, va tang gio len 1
            if (this.minute == 0) {
                tangGio();
            }
        }

        // Tang gio len 1 don vi, neu gio len 24 thi gio reset ve 0
        public void tangGio() {
            this.setHour(this.hour + 1);
        }
    }

    public static void main(String[] args) {
        // Khai bao doi tuong
        Time O = new Time(0, 0, 7);
        System.out.println("Thoi gian da thiet lap: " + O.toString());
        while (true) {
            // Hien thi thoi gian hien tai
            System.out.println(O.toString());
            try {
                Thread.sleep(1000);
                O.tangGiay();
            } catch (Exception ex) {

            }
        }
    }

}
