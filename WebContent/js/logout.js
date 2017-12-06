        var  timer2;
        document.onkeypress=resetTimer;
        document.onmousemove=resetTimer;
        function resetTimer()
        {
           clearTimeout(timer2);
                // waiting time in minutes
            var wait=1;

           // alert user one minute before

            // logout user
            timer2=setTimeout(logout, 60000*wait);
        }

        function logout()
        {
            window.location.href='LogoutServlet';
        }



