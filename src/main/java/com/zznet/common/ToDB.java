package com.zznet.common;

import com.zznet.dao.TvDao;
import com.zznet.entity.TVLine;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

/**
 * Created by zz on 2017/7/9.
 */
@Controller
public class ToDB {

    @Resource(name = "tvdao")
    private TvDao tvDaoImpl;

    @RequestMapping("/sys/tv")
    private void systv()
            throws IOException {
        String source="d:\\3.txt";

        try {
            // read file content from file


            StringBuilder sb = new StringBuilder("");

            FileReader reader = new FileReader(source);
            BufferedReader br = new BufferedReader(reader);

            String str;

            TVLine[] a = new TVLine[1238];

            for (int i = 0; i < a.length; i++) {
                TVLine tl = new TVLine(-1,i + "f", i + "u",0);
                a[i] = tl;
            }
            int i;
            while ((str = br.readLine()) != null) {
                String fname;
                String url;
                i = Integer.valueOf(str.substring(0, str.indexOf("*")));


                if (str.contains("*file*")) {
                    fname = str.substring(str.lastIndexOf("*") + 1);
                    a[i - 1].setTitleurl(fname);
                }

                if (str.contains("*title*")) {
                    url = str.substring(str.lastIndexOf("*") + 1);
                    a[i - 1].setTitlename(url);
                }
                ++i;

            }
            for (TVLine anA : a) {
                //System.out.println(anA.getTitlename()+","+anA.getTitleurl());

                tvDaoImpl.addTVLine(anA);

            }
            br.close();
            reader.close();

        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
