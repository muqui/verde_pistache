/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.verde.pistache.model;

/**
 *
 * @author mq12
 */
public class JsonResponse {
     private String status = null;
        private Object result = null;
        public String getStatus() {
                return status;
        }
        public void setStatus(String status) {
                this.status = status;
        }
        public Object getResult() {
                return result;
        }
        public void setResult(Object result) {
                this.result = result;
        }
}
